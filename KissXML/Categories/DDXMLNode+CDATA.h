//
//  DDXMLNode+CDATA.h
//  MiCondis
//
//  Created by Jose Luis Campaña on 16/04/13.
//
//

#import "DDXMLNode.h"

@interface DDXMLNode (CDATA)

/**
 Creates a new XML element with an inner CDATA block
 <name><![CDATA[string]]></name>
 */
+ (id)cdataElementWithName:(NSString *)name stringValue:(NSString *)string;
@end
