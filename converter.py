import xml.etree.ElementTree as ET
import os
import fnmatch

for root, dirnames, filenames in os.walk('.'):
    for xml_file in fnmatch.filter(filenames, '*.xml'):
        xml_path = os.path.join(root, xml_file)
        with open(xml_path) as open_xml:
            xml_string = open_xml.read()

        tree = ET.ElementTree(ET.fromstring(xml_string))
        code = tree.find('.//argument')

        if code is not None:
            with open(xml_path.replace('.xml', '.gml'), 'w') as write_gml:
                write_gml.write(code.text)
            print("wrote stuff to {}".format(xml_path))
