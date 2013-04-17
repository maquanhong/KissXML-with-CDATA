//
//  DDXMLNode+CDATA.m
//  MiCondis
//
//  Created by Jose Luis Campaña on 16/04/13.
//
//

#import "DDXMLNode+CDATA.h"
#import "DDXMLElement.h"
#import "DDXMLDocument.h"

@implementation DDXMLNode (CDATA)

+ (id)cdataElementWithName:(NSString *)name stringValue:(NSString *)string
{
    NSString* nodeString = [NSString stringWithFormat:@"<%@><![CDATA[%@]]></%@>", name, string, name];
    DDXMLElement* cdataNode = [[DDXMLDocument alloc] initWithXMLString:nodeString
                                                               options:DDXMLDocumentXMLKind
                                                                 error:nil].rootElement;
    return [cdataNode copy];
}
@end
