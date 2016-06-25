from yaml import load
import DBConnector
import sys
import os
import xml.etree.ElementTree as ET

get_project_id = """
SELECT 
    * 
FROM
    vms.project_info
WHERE
    `name` = '<proj_name>';
"""

get_proj_xml = """
SELECT 
    data 
FROM 
    vms.project 
WHERE 
        id = <proj_id> 
    AND 
        version = (SELECT MAX(version) FROM vms.project WHERE id = <proj_id>);
"""

def initDbConn(opts_file, mod):
    try:
        with open(opts_file, 'rb') as fp:
            opts_dict = load(fp)
            dbObj = DBConnector.DBConnector(host=opts_dict['%s_host'%mod], user=opts_dict['%s_user'%mod], password=opts_dict['%s_password'%mod], database=opts_dict['%s_database'%mod])
            return dbObj
    except:
        raise

        
def get_name_to_ip_map(proj_id, dbObj):
    ip_map = {}
    proj_xml = dbObj.execute(get_proj_xml.replace("<proj_id>", str(proj_id)))[0][0]
    root = ET.XML(proj_xml)
    ip_map_str = root.find("category/categories/category/ip_camera_map").text
    ip_map_list = ip_map_str.split(';')
    # ip_map = map(lambda x: ipmap[x.split(',')[0]] = x.split(',')[1],ip_map_list)
    for elem in ip_map_list:
        ip_map[elem.split(',')[0]] = elem.split(',')[1]
    return ip_map

def closeDbConn(dbObj):
    dbObj.close()

def get_proj_id(opts_file, proj_name):
    # initialize connection to the database 
    dbObj = initDbConn(sys.argv[1], 'proj')
    with open(opts_file, 'rb') as fp:
        opts_dict = load(fp)
    dbObj = DBConnector.DBConnector(host=opts_dict['proj_host'], user=opts_dict['proj_user'], password=opts_dict['proj_password'], database=opts_dict['proj_database'])    
    
    # retrieve the project id
    try:
        proj_info = dbObj.execute(get_project_id.replace("<proj_name>", proj_name))
    except:
        print "\n\n%s\n\n" % get_project_id.replace("<proj_name>", proj_name)
    
    proj_id = int(proj_info[0][0])
    return proj_id, dbObj
    
def setupIpMapTable(opts_file):
    delete_rows_sql = """
    DELETE FROM <schema>.<table>
    WHERE hostname = '<host>';
    """
    create_sql = """
    CREATE TABLE IF NOT EXISTS <schema>.<table>
    (
    hostname varchar(25),
    name varchar(25),
    ip varchar(25)
    );
    """    
    with open(opts_file, 'rb') as fp:
        opts_dict = load(fp)
        dbObj = DBConnector.DBConnector(host=opts_dict['ipmap_host'], user=opts_dict['ipmap_user'], password=opts_dict['ipmap_password'], database='')
        delete_rows_sql = delete_rows_sql.replace("<host>", opts_dict['ipmap_host'])
    
    dbObj.execute("""CREATE SCHEMA IF NOT EXISTS %s;""" % opts_dict['ipmap_database'])
    
    create_sql = create_sql.replace("<schema>", opts_dict['ipmap_database'])
    create_sql = create_sql.replace("<table>", opts_dict['ipmap_table'])
    dbObj.execute(create_sql)

    delete_rows_sql = delete_rows_sql.replace("<schema>", opts_dict['ipmap_database'])
    delete_rows_sql = delete_rows_sql.replace("<table>", opts_dict['ipmap_table'])
    delete_rows_sql = delete_rows_sql.replace("<host>", opts_dict['ipmap_host'])
    dbObj.execute(delete_rows_sql)
    dbObj.commit()
    return dbObj
    
def dumpIpMapData(opts_file, ip_map, dbObj):
    insert_sql = """
    INSERT INTO
        <schema>.<table> (hostname, name, ip)
    VALUES
    <valueStr>;
    """
    with open(opts_file, 'rb') as fp:
        opts_dict = load(fp)
    val_str = ""
    for name, ip in ip_map.iteritems():
        val_str += '(' + "'%s','%s','%s'" % (opts_dict['ipmap_host'], name, ip) + '),'
    val_str = val_str.rstrip(',')
    insert_sql = insert_sql.replace("<valueStr>", val_str)
    insert_sql = insert_sql.replace("<schema>", opts_dict['ipmap_database'])
    insert_sql = insert_sql.replace("<table>", opts_dict['ipmap_table'])
    try:
        dbObj.execInsertSql(insert_sql)
    except:
        print insert_sql
    
    
if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit("\n\nUsage: %s <opts_file> <project_name>\n\n" % os.path.basename(__file__))
    
    opts_file = sys.argv[1]
    proj_name = sys.argv[2]
    
    proj_id, dbObj = get_proj_id(opts_file, proj_name)
    name_ip_map = get_name_to_ip_map(proj_id, dbObj)   
    closeDbConn(dbObj)
    
    dbObj = setupIpMapTable(opts_file)
    dumpIpMapData(opts_file, name_ip_map, dbObj)
    closeDbConn(dbObj)
    
    
    
