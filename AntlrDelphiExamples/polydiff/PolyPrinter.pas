// $ANTLR 3.1b2 PolyPrinter.g 2008-07-20 21:14:29
unit PolyPrinter;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

import org.antlr.stringtemplate.*;
import org.antlr.stringtemplate.language.*;
import java.util.HashMap;
    const WS=7;
    const INT=5;
    const MULT=4;
    const ID=6;
    const EOF=-1;
    const T__9=9;
    const T__8=8;              
type
  TPolyPrinter = class(TAntlrTreeParser)
  public
    tokenNames:TStrings;
    FOLLOW_8_in_poly47:IBitSet;
    FOLLOW_poly_in_poly52:IBitSet;
    FOLLOW_poly_in_poly56:IBitSet;
    FOLLOW_MULT_in_poly78:IBitSet;
    FOLLOW_poly_in_poly82:IBitSet;
    FOLLOW_poly_in_poly86:IBitSet;
    FOLLOW_9_in_poly108:IBitSet;
    FOLLOW_poly_in_poly113:IBitSet;
    FOLLOW_poly_in_poly117:IBitSet;
    FOLLOW_INT_in_poly138:IBitSet;
    FOLLOW_ID_in_poly152:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    protected StringTemplateGroup templateLib =
      new StringTemplateGroup("PolyPrinterTemplates", AngleBracketTemplateLexer.class);

    public void setTemplateLib(StringTemplateGroup templateLib) {
      this.templateLib = templateLib;
    }
    public StringTemplateGroup getTemplateLib() {
      return templateLib;
    }
    /** allows convenient multi-value initialization:
     *  "new STAttrMap().put(...).put(...)"
     */
    public static class STAttrMap extends HashMap {
      public STAttrMap put(String attrName, Object value) {
        super.put(attrName, value);
        return this;
      }
      public STAttrMap put(String attrName, int value) {
        super.put(attrName, new Integer(value));
        return this;
      }
    }
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

    public
        type IPolyPrinter_poly_return=interface(ITreeRuleReturnScope)
        ['{7E360D67-9451-4B38-88CD-1C73382E3D91}']
        end;   
        type poly_return =class( TTreeRuleReturnScope , IPolyPrinter_poly_return)
        private
        public

        public StringTemplate st;
        public Object getTemplate() { return st; }
        public String toString() { return st==null?null:st.toString(); }
        end;

    // $ANTLR start "poly"
    // PolyPrinter.g:9:1: poly : ( ^( ''+'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>+<b>" | ^( MULT a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a><b>" | ^( ''^'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>^<b>" | INT -> {%{$INT.text}} | ID -> {%{$ID.text}});
    function poly():IPolyPrinter_poly_return{ITreeRuleReturnScope};
    // $ANTLR end poly

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TPolyPrinter.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TPolyPrinter.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"MULT"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''^''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TPolyPrinter.InitBitsets;
begin
  FOLLOW_8_in_poly47 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly52 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly56 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_poly78 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly82 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly86 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_9_in_poly108 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly113 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly117 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_poly138 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_poly152 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TPolyPrinter.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TPolyPrinter.GetGrammarFileName():String;
begin
  Result:='PolyPrinter.g'; 
end;



// $ANTLR start "poly"
// PolyPrinter.g:9:1: poly : ( ^( ''+'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>+<b>" | ^( MULT a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a><b>" | ^( ''^'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>^<b>" | INT -> {%{$INT.text}} | ID -> {%{$ID.text}});
function TPolyPrinter.poly():IPolyPrinter_poly_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IPolyPrinter_poly_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  INT1:ICommonTree;
  ID2:ICommonTree;
  a:IPolyPrinter_poly_return{ITreeRuleReturnScope}; 

  b:IPolyPrinter_poly_return{ITreeRuleReturnScope}; 


begin
    initRule;
    retval := poly_return.Create();
    retval.start := input.LT(1);

    try 
      try
        // ruleBlock:PolyPrinter.g:9:5: ( ^( ''+'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>+<b>" | ^( MULT a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a><b>" | ^( ''^'' a= poly b= poly ) -> template(a=$a.stb=$b.st) "<a>^<b>" | INT -> {%{$INT.text}} | ID -> {%{$ID.text}})
        _alt[1]:=5;

        case input.LA(1) of
         8: 
            begin
            _alt[1]:=1;
            end;
         MULT: 
            begin
            _alt[1]:=2;
            end;
         9: 
            begin
            _alt[1]:=3;
            end;
         INT: 
            begin
            _alt[1]:=4;
            end;
         ID: 
            begin
            _alt[1]:=5;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 1, 0, input);

        end;
        end;

        case (_alt[1]) of 
             1 :
                begin
                // PolyPrinter.g:9:7: ^( ''+'' a= poly b= poly )
                begin
                match(input,8,FOLLOW_8_in_poly47); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_poly_in_poly52);
                a:=poly();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_poly_in_poly56);
                b:=poly();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 



                // TEMPLATE REWRITE
                // 9:29: -> template(a=$a.stb=$b.st) "<a>+<b>"
                {
                    retval.st = new StringTemplate(templateLib, "<a>+<b>",
                  new STAttrMap().put("a", (IIF(Assigned(a), a.st,nil))).put("b", (IIF(Assigned(b), b.st,nil))));
                }


                end;
                end;
             2 :
                begin
                // PolyPrinter.g:10:4: ^( MULT a= poly b= poly )
                begin
                match(input,MULT,FOLLOW_MULT_in_poly78); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_poly_in_poly82);
                a:=poly();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_poly_in_poly86);
                b:=poly();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 



                // TEMPLATE REWRITE
                // 10:26: -> template(a=$a.stb=$b.st) "<a><b>"
                {
                    retval.st = new StringTemplate(templateLib, "<a><b>",
                  new STAttrMap().put("a", (IIF(Assigned(a), a.st,nil))).put("b", (IIF(Assigned(b), b.st,nil))));
                }


                end;
                end;
             3 :
                begin
                // PolyPrinter.g:11:4: ^( ''^'' a= poly b= poly )
                begin
                match(input,9,FOLLOW_9_in_poly108); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_poly_in_poly113);
                a:=poly();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_poly_in_poly117);
                b:=poly();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 



                // TEMPLATE REWRITE
                // 11:26: -> template(a=$a.stb=$b.st) "<a>^<b>"
                {
                    retval.st = new StringTemplate(templateLib, "<a>^<b>",
                  new STAttrMap().put("a", (IIF(Assigned(a), a.st,nil))).put("b", (IIF(Assigned(b), b.st,nil))));
                }


                end;
                end;
             4 :
                begin
                // PolyPrinter.g:12:4: INT
                begin
                INT1:=match(input,INT,FOLLOW_INT_in_poly138) as ICommonTree; 



                // TEMPLATE REWRITE
                // 12:13: -> {%{$INT.text}}
                {
                    retval.st = new StringTemplate(templateLib,(IIF(Assigned(INT1), INT1.getText(), '')));
                }


                end;
                end;
             5 :
                begin
                // PolyPrinter.g:13:4: ID
                begin
                ID2:=match(input,ID,FOLLOW_ID_in_poly152) as ICommonTree; 



                // TEMPLATE REWRITE
                // 13:12: -> {%{$ID.text}}
                {
                    retval.st = new StringTemplate(templateLib,(IIF(Assigned(ID2), ID2.getText(), '')));
                }


                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval//poly_return(retval.getobject);;
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.