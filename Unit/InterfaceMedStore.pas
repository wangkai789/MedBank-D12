unit InterfaceMedStore;

interface
uses Uni,
     SysUtils,
     Forms,
     Windows,
     //UExcelAdapter,
     //XLSAdapter,
     //UCustomFlexCelReport,
     //UFlexCelReport,
     FlexCel.Report,
     FlexCel.VCLSupport,
     FlexCel.XlsAdapter,
     FlexCel.Render,
     System.IOUtils,
     Dialogs,
     Controls,
     frxClass,
     //ClassLib,
     //report,
     DB,
     StdCtrls,
     ExtCtrls,
     shellapi;
type

  TMyTitle=CLASS
  private

  public
    Title:string;
    FrklbName:string;
    FDateFrom:string;
    FDateto:string;
    FopidName:STRING;
    Fghdw:string;
    FDeptName:string;
    Fifzf:string;
    Flsh:string;
    constructor Create;
    destructor Destroy; override;
  END;

  IMedStore=interface
    //ҩƷ�仯
    function SearchStoreChange(aQuery:tuniquery;yfbm:integer;datefrom,dateto:Tdatetime;MedClass:integer;SearchCondition:string):boolean;
    //����ѯ
    function SearchInStore(aQuery:tuniquery;MedClass,SearchConditionClass:byte;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    //������
    function SearchInStoreTotal(aQuery:tuniquery;SearchClass:integer;datefrom,dateto:Tdatetime):boolean;
    //��ⵥ����
    function SearchInStoreMaster(aQuery:tuniquery;yfbm:integer;SearchConditionClass:byte;datefrom,dateto:Tdatetime;SearchCondition:string;rklb,ghdwcode:integer):boolean;
    //��ⵥ��ϸ��
    function SearchInStoreDetail(aQuery:tuniquery;rkrq:string;lsh:integer):boolean;overload;
    //2023.12.07��ⵥ��ϸ��ȫ�� ����ⷿ����
    function SearchInStoreDetail(aQuery:tuniquery;yfbm:integer;datefrom,dateto:tdatetime;SearchConditionClass:byte;SearchCondition:string;rklb,ghdwcode:integer):boolean;overload;
    //2023.11.08��ⵥ��ӡ
    function PrintInStore(MYTfrxReport: TfrxReport;aQuery:tuniquery;rkrq:string;lsh:integer):boolean;
    //����ѯ��ʱ��
    //function SearchInStoreTemp(aQuery:tuniquery;opid:integer):boolean;
    //���������ʱ��
    //function AddInStoreTemp(aQuery:tuniquery;opid:integer):boolean;
    //���ɾ����ʱ��
    //function DelInStoreTemp(aQuery:tuniquery;DelClass:byte;param:integer):boolean;
    //���������Ϣ
    //function SaveInStore(aQuery:tuniquery;mcgy,bgy,fhr:string;lsh,opid:integer):boolean;

    //����
    function SearchOutStore(aQuery:tuniquery;yfbm,MedClass,StoreClass:integer;SearchCondition:string;datefrom,dateto:Tdatetime):boolean;

    //�������
    function SearchOutStoreTotal(aQuery:tuniquery;PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean;

    //2023.11.08 wk ��������
    function SearchOtherOutStoreMaster(aQuery:tuniquery;datefrom,dateto:Tdatetime;Reqdeptid:integer;ifzf:boolean):boolean;
    //2023.11.08 wk ������ϸ��
    function SearchOtherOutStoreDetail(aQuery:tuniquery;qldh:integer):boolean;overload;
    //2023.11.08 wk������ϸ��ȫ��
    function SearchOtherOutStoreDetail(aQuery:tuniquery;datefrom,dateto:Tdatetime;Reqdeptid:integer;ifzf:boolean):boolean;overload;

    //2024.04.13 wk ��ӡ���ⵥ
    function PrintOutStore(MYTfrxReport:TfrxReport;aQuery:tuniquery;ckrq:Tdatetime;ckh:integer):boolean;
    //2023.11.08 wk ��ӡ�������ⵥ
    function PrintOtherOutStore(MYTfrxReport:TfrxReport;aQuery:tuniquery;qldh:integer):boolean;
    //2023.11.09 wk ҩ��������ϸ
    function SearchMedStoreSaleDetail(aQuery:tuniquery;yfbm:integer;PatientClass,MedClass,DTClass,SearchConditionClass:byte;SearchCondition:string;datefrom,dateto:Tdatetime):boolean;  //����
    //2023.11.09 wkҩ�����ۻ���
    function SearchMedStoreSaleTotal(aQuery:tuniquery;yfbm,PatientClass,MedClass,DTClass,TotalClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2023.11.09  wk ҩ������ҽʦ������ͳ��
    function SearchMedStoreSaleDoctor(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.03.14  wk ҩ������ҩ��ͳ��
    function SearchMedStoreSaleAntibiotics(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.05.14  wk ҩƷ���һ���
    function SearchMedStoreSaleDept(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean;

    //��ҩ�ܱ���ѯ
    function SearchMedinfo(aQuery:tuniquery;yfbm:integer;SearchCondition:string):boolean;overload;
    //��ҩ�ܱ���ѯ
    function SearchMedinfo(aQuery:tuniquery;StopStatus,MedClass,StoreClass,SearchClass:integer;SearchCondition:string;datefrom,dateto:tdatetime):boolean;overload;
    //��ѯ��ҩ��Ϣ
    function SearchSendMedInfo(aQuery:tuniquery;PatientClass,cfdh:integer):boolean;
    //��ӡ����
    //function PrintRipInfo(MYTfrxReport:TfrxReport;aDataSet,MyQuery1,MyQuery2,MyQuery3,MyQuery4:tuniquery;mzh,cfdh,MedClass:integer):boolean;
    function PrintRipInfo(MYTfrxReport:TfrxReport;aDataSet,MyQuery1,MyQuery2,MyQuery3,MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;
    function PrintRipInfoPreview(MYTfrxReport:TfrxReport;aQuery,MyQuery1,MyQuery2,MyQuery3,MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;
    //2024.05.19��ӡ������ҩ����
    function PrintRipInfoReturnPreview(MYTfrxReport:TfrxReport;aQuery,MyQuery1, MyQuery2, MyQuery3, MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;

    //2024.05.19 ��ѯ������ҩ����ID
    function SearchReturnApplyID(aQuery:tuniquery;no,mzh:integer):integer;
    //��ӡ��ҩ��
    function PrintSendMedInfo(MYTfrxReport:TfrxReport;PatientClass,MedClass:integer):boolean;
    // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����
    //function ExportXLS(MyFlexCelReport:TFlexCelReport;MyXLSAdapter:TXLSAdapter;datefrom,dateto:tdatetime;TemplateName:string;TitleClass:byte=0):boolean;
    function ExportXLS(tablename:string;aQuery:TDataSet;datefrom,dateto:tdatetime;TemplateName:string;TitleClass:byte=0):boolean; // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����
    //�Զ���title
    //function ExportXLSTitle(MyFlexCelReport:TFlexCelReport;MyXLSAdapter:TXLSAdapter;datefrom,dateto:tdatetime;TemplateName:string;MyTitle: TMyTitle):boolean;
    function ExportXLSTitle(tablename:string;aQuery:TDataSet;datefrom,dateto:tdatetime;TemplateName:string;MyTitle: TMyTitle):boolean; // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����
    //2023.12.08 wk ��ҩ
    function SearchReturnStore(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    //���
    function SearchBalancesStore(aQuery:tuniquery;yfbm,MedClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    //2023.11.14 ҩƷ����ѯ
    //����
    function SearchBalanceMaster(aQuery:tuniquery;datefrom,dateto:Tdatetime;yfbm:integer;ypbh:string;MedClass:integer):boolean;
    //��ϸ
    function SearchBalanceDetail(aQuery:tuniquery;datefrom,dateto:Tdatetime;yfbm:integer;ypbh:string):boolean;
    //������
    function SearchPurchaseSaleStock(aQuery:tuniquery;opid:integer;datefrom,dateto:Tdatetime):boolean;
    //����
    function SearchProfitStore(aQuery:tuniquery;MedClass,SearchClass:integer;datefrom,dateto:Tdatetime):boolean;
    //����
    function SearchPriceChangeStore(aQuery:tuniquery;MedClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    //���
    function SearchStore(aQuery:tuniquery;Medlb,MaxValue,MedType:integer;Medcode:string;Zero:boolean):boolean;
    //ҩƷ��������ҩ����ϵ
    function SearchStoreClassRelations(aQuery:tuniquery;StoreClassID:integer):integer;
    //��ȡҩƷ���
    function GetMedID(aQuery:tuniquery):String;
    //2023.12.06��ȡҩ����Ϣ
    procedure GetYfbm(aQuery:tuniquery;Mycbb:TComboBox;IFAll:boolean);
    //2023.12.26 ռ�ÿ���ѯ
    function SearchStoreOccupyMaster(aQuery:tuniquery;yfbm:integer;spell:string):boolean;
    function SearchStoreOccupyDetail(aQuery:tuniquery;yfbm:integer;Medcode:string):boolean;
    function DeleteStoreOccupy(aQuery:tuniquery;rowid:integer):boolean;
    //2023.01.04 ��ҩ�Ѳ�ѯ
    function SearchBoilMedFee(aQuery:tuniquery;DTClass:integer;datefrom,dateto:Tdatetime):boolean;
    function GetMyDataSet:Tuniquery;
    // ��ѯ���۱�
    //function SearchStore(aQuery:tuniquery;Medlb,MaxValue,MedType:integer;Medcode:string;Zero:boolean):boolean;
    //2024.02.29 ҩƷ���ռ�¼��ѯ
    function SearchExamRecord(aQuery:tuniquery;MedClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.04.22 סԺҩ��¥�㷢ҩ
    Function  ClearMedstoreTemp(aQuery:tuniquery;deptid,yzlb,opid:integer;roomid,sendtype,optype:string;yfbm:integer):boolean;
    function  ClearlockMedinfo(aQuery:tuniquery;yfbm,opid:integer):boolean;
    function  LockMedinfo(aQuery:tuniquery;roomid: string; ifxy,yzlb,opid,deptid,zyh:integer;sendtype:string;yfbm:integer):boolean;
    function  GetSendno(aQuery:tuniquery):string;
    function  CheckSend(aQuery:tuniquery;sendtype,sendno:string;yfbm:integer):integer;
    function  SendMedinfo(aQuery:tuniquery;opid,reccount,yzlb,cfclass:integer;roomid,sendtype,sendno,ipaddress: string;yfbm,ksbm,cflb:integer):boolean;
    //��ѯסԺδ��ҩ����
    function  SearchNOSendRIPinfo(aQuery:tuniquery;yfbm:integer):boolean;
    //��ӡ����
    function PrintSendMedTotal(MYTfrxReport:TfrxReport;aQuery:tuniquery;sendno:string;MedClass,kind,yfbm:integer):boolean;
    //��ӡ��ϸ
    function PrintSendMedDetail(MYTfrxReport:TfrxReport;aQuery:tuniquery;sendno:string;MedClass,kind,yfbm:integer):boolean;
    //2024.05.17���ҷ�ҩ����������
    function SearchPatientCount(aQuery:tuniquery;sendno:string):integer;

    //��ѯ������Ϣ
    function SearchDept(aQuery:tuniquery):boolean;
    //��ѯ������Ԫ
    function SearchNurseUnit(aQuery:tuniquery):boolean;
    //��ѯ��ҩ������Ϣ  0������Ԫ 1����
    function SearchSendMedDept(aQuery:tuniquery;deptClass:integer):boolean;

    procedure SetMyDataSet(value: Tuniquery);
    procedure GetStoreCLass(aQuery:tuniquery;yfbm: integer;MyRgp:TRadioGroup);
    property MyDataSet:Tuniquery read GetMyDataSet write SetMyDataSet;
  end;

  TMedStore=class(TInterfacedObject, IMedStore)
  private
    FirstAlpha:string[1];
    FReportTemplatePath:STRING;
    FMyDataSet:Tuniquery;
    FTemplateName:string;
    FQuery:tuniquery;
    FMedClass,FSearchConditionClass:byte;
    Fdatefrom:Tdatetime;
    Fdateto:Tdatetime;
    FSearchCondition:string;
    function SearchRipTitle(aQuery:tuniquery;mzh,no:integer):boolean;       //������ͷ
    function SearchRipDetail(aQuery:tuniquery;RipClass,cfdh:integer):boolean; //������ϸ
    function SaveRipSign(aQuery:tuniquery;UserID,PicName:string):boolean; //����ǩ��;
    function SearchSendMedInfo(aQuery:tuniquery;PatientClass,cfdh:integer):boolean;     //��ѯ��ҩ��Ϣ
    //��ҩ�ܱ���ѯ
    function SearchMedinfo(aQuery:tuniquery;yfbm:integer;SearchCondition:string):boolean;overload;
    //��ҩ�ܱ���ѯ
    function SearchMedinfo(aQuery:tuniquery;StopStatus,MedClass,StoreClass,SearchClass:integer;SearchCondition:string;datefrom,dateto:tdatetime):boolean;overload;

    function SearchStoreChange(aQuery:tuniquery;yfbm:integer;datefrom,dateto:Tdatetime;MedClass:integer;SearchCondition:string):boolean;
    function SearchInStore(aQuery:tuniquery;MedClass,SearchConditionClass:byte;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;    //���
    function SearchInStoreTotal(aQuery:tuniquery;SearchClass:integer;datefrom,dateto:Tdatetime):boolean; //������
    //2023.12.07��ⵥ��������ⷿ����
    function SearchInStoreMaster(aQuery:tuniquery;yfbm:integer;SearchConditionClass:byte;datefrom,dateto:Tdatetime;SearchCondition:string;rklb,ghdwcode:integer):boolean;
    //��ⵥ��ϸ��
    function SearchInStoreDetail(aQuery:tuniquery;rkrq:string;lsh:integer):boolean;overload;
    //2023.12.07��ⵥ��ϸ��ȫ�� ����ⷿ����
    function SearchInStoreDetail(aQuery:tuniquery;yfbm:integer;datefrom,dateto:tdatetime;SearchConditionClass: byte;SearchCondition: string;rklb,ghdwcode:integer):boolean;overload;
    //��ⵥ��ӡ
    function PrintInStore(MYTfrxReport: TfrxReport;aQuery:tuniquery;rkrq:string;lsh:integer):boolean;

    function SearchOutStore(aQuery:tuniquery;yfbm,MedClass,StoreClass:integer;SearchCondition:string;datefrom,dateto:Tdatetime):boolean;  //����
    function SearchProfitStore(aQuery:tuniquery;MedClass,SearchClass:integer;datefrom,dateto:Tdatetime):boolean;  //����
    function SearchOutStoreTotal(aQuery:tuniquery;PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean; //�������
    //���ⵥ��ӡ
    function PrintOutStore(MYTfrxReport:TfrxReport;aQuery:tuniquery;ckrq:Tdatetime;ckh:integer):boolean;
    //��������
    function SearchOtherOutStoreMaster(aQuery:tuniquery;datefrom,dateto:Tdatetime;Reqdeptid:integer;ifzf:boolean):boolean;
    //������ϸ��
    function SearchOtherOutStoreDetail(aQuery:tuniquery;qldh:integer):boolean;overload;
    //������ϸ��ȫ��
    function SearchOtherOutStoreDetail(aQuery:tuniquery;datefrom,dateto:Tdatetime;Reqdeptid:integer;ifzf:boolean):boolean;overload;
    //��ӡ�������ⵥ
    function PrintOtherOutStore(MYTfrxReport:TfrxReport;aQuery:tuniquery;qldh:integer):boolean;

    //2023.11.09 wk ҩ��������ϸ
    function SearchMedStoreSaleDetail(aQuery:tuniquery;yfbm:integer;PatientClass,MedClass,DTClass,SearchConditionClass:byte;SearchCondition:string;datefrom,dateto:Tdatetime):boolean;  //����
    //2023.11.09 wkҩ�����ۻ���
    function SearchMedStoreSaleTotal(aQuery:tuniquery;yfbm,PatientClass,MedClass,DTClass,TotalClass:integer;datefrom,dateto:Tdatetime):boolean; //�������
    //2023.11.09  wk ҩ������ҽʦ������ͳ��
    function SearchMedStoreSaleDoctor(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean; //�������
    //2024.03.14  wk ҩ������ҩ��ͳ��
    function SearchMedStoreSaleAntibiotics(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.05.14  wk ҩƷ���һ���
    function SearchMedStoreSaleDept(aQuery:tuniquery;yfbm,PatientClass,
        DTClass:integer;datefrom,dateto:Tdatetime): boolean;
    //2023.12.08 wk ҩ����ҩ��ѯ
    function SearchReturnStore(aQuery:tuniquery;yfbm,PatientClass,DTClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    function SearchPurchaseSaleStock(aQuery:tuniquery;opid:integer;datefrom,dateto:Tdatetime):boolean;//������
    //���
    function SearchBalancesStore(aQuery:tuniquery;yfbm,MedClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;
    //2023.11.14 ҩƷ����ѯ����
    function SearchBalanceMaster(aQuery:tuniquery;datefrom,dateto:Tdatetime;yfbm:integer;ypbh:string;MedClass:integer):boolean;
    //��ϸ
    function SearchBalanceDetail(aQuery:tuniquery;datefrom,dateto:Tdatetime;yfbm:integer;ypbh:string):boolean;
    function SearchPriceChangeStore(aQuery:tuniquery;MedClass:integer;datefrom,dateto:Tdatetime;SearchCondition:string):boolean;//����
    function SearchStore(aQuery:tuniquery;Medlb,MaxValue,MedType:integer;Medcode:string;Zero:boolean):boolean;
    function SearchStoreClassRelations(aQuery:tuniquery;StoreClassID:integer):integer;
     //2024.04.21�����ӡ����
    function PrintRipInfo(MYTfrxReport:TfrxReport;aQuery,MyQuery1,MyQuery2,MyQuery3,MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;
    function PrintRipInfoPreview(MYTfrxReport:TfrxReport;aQuery,MyQuery1,MyQuery2,MyQuery3,MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;
     //2024.05.19��ӡ������ҩ����
    function PrintRipInfoReturnPreview(MYTfrxReport:TfrxReport;aQuery,MyQuery1, MyQuery2, MyQuery3, MyQuery4,MyQuery5:tuniquery;mzh,cfdh,MedClass,no:integer):boolean;
    //2024.05.19 ��ѯ������ҩ����ID
    function SearchReturnApplyID(aQuery:tuniquery;no,mzh:integer):integer;
    function PrintSendMedInfo(MYTfrxReport:TfrxReport;PatientClass,MedClass:integer):boolean;
    // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����
    //function ExportXLS(MyFlexCelReport:TFlexCelReport;MyXLSAdapter:TXLSAdapter;datefrom,dateto:tdatetime;TemplateName:string;TitleClass:byte=0):boolean;
    //function ExportXLSTitle(MyFlexCelReport:TFlexCelReport;MyXLSAdapter:TXLSAdapter;datefrom,dateto:tdatetime;TemplateName:string;MyTitle: TMyTitle):boolean;
    function ExportXLS(tablename:string;aQuery:TDataSet;datefrom,dateto:tdatetime;TemplateName:string;TitleClass:byte=0):boolean; // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����
    function ExportXLSTitle(tablename:string;aQuery:TDataSet;datefrom,dateto:tdatetime;TemplateName:string;MyTitle: TMyTitle):boolean; // TitleClass 0 ��������ֹ���ڣ�1 ����ֹ����

    //2023.12.26 ռ�ÿ���ѯ
    function SearchStoreOccupyMaster(aQuery:tuniquery;yfbm:integer;spell:string):boolean;
    function SearchStoreOccupyDetail(aQuery:tuniquery;yfbm:integer;Medcode:string):boolean;
    function DeleteStoreOccupy(aQuery:tuniquery;rowid:integer):boolean;
    //2023.01.04 ��ҩ�Ѳ�ѯ
    function SearchBoilMedFee(aQuery:tuniquery;DTClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.02.29 ҩƷ���ռ�¼��ѯ
    function SearchExamRecord(aQuery:tuniquery;MedClass:integer;datefrom,dateto:Tdatetime):boolean;
    //2024.04.22 סԺҩ��¥�㷢ҩ
    Function  ClearMedstoreTemp(aQuery:tuniquery;deptid,yzlb,opid:integer;roomid,sendtype,optype:string;yfbm:integer):boolean;
    function  ClearlockMedinfo(aQuery:tuniquery;yfbm,opid:integer):boolean;
    function  LockMedinfo(aQuery:tuniquery;roomid: string; ifxy,yzlb,opid,deptid,zyh:integer;sendtype:string;yfbm:integer):boolean;
    function  GetSendno(aQuery:tuniquery):string;
    function  SendMedinfo(aQuery:tuniquery;opid,reccount,yzlb,cfclass:integer;roomid,sendtype,sendno,ipaddress:string;yfbm,ksbm,cflb:integer):boolean;
    function  CheckSend(aQuery:tuniquery;sendtype,sendno:string;yfbm:integer):integer;
    //��ѯסԺδ��ҩ����
    function  SearchNOSendRIPinfo(aQuery:tuniquery;yfbm:integer):boolean;

    //��ӡ����
    function PrintSendMedTotal(MYTfrxReport:TfrxReport;aQuery:tuniquery;sendno:string;MedClass,kind,yfbm:integer):boolean;
    //��ӡ��ϸ
    function PrintSendMedDetail(MYTfrxReport:TfrxReport;aQuery:tuniquery;sendno:string;MedClass,kind,yfbm:integer):boolean;
    //2024.05.17���ҷ�ҩ����������
    function SearchPatientCount(aQuery:tuniquery;sendno:string):integer;

    //��ѯ������Ϣ
    function SearchDept(aQuery:tuniquery):boolean;
    //��ѯ������Ԫ��Ϣ
    function SearchNurseUnit(aQuery:tuniquery):boolean;
    //��ѯ��ҩ������Ϣ  0������Ԫ 1����
    function SearchSendMedDept(aQuery:tuniquery;deptClass:integer):boolean;

    function GetMyDataSet:Tuniquery;
    function GetMedID(aQuery:tuniquery):String;
    procedure SetMyDataSet(value: Tuniquery);
    procedure GetStoreCLass(aQuery:tuniquery;yfbm: integer;MyRgp:TRadioGroup);
    procedure GetYfbm(aQuery:tuniquery;Mycbb:TComboBox;IFAll:boolean);
    property MyDataSet:Tuniquery read GetMyDataSet write SetMyDataSet;

  public

    constructor Create;
    destructor Destroy; override;

  end;

  TPriceAdjustMaster=class
  private
    FRowid:integer;
    FEffectiveDate:tdatetime;
    FAdjustDate:tdatetime;
    Fopid:integer;
    FAuditState:boolean;
  public
    property Rowid:integer           read FRowid         write FRowid;
    property EffectiveDate:tdatetime read FEffectiveDate write FEffectiveDate;
    property AdjustDate:tdatetime    read FAdjustDate    write FAdjustDate;
    property opid:integer            read Fopid          write Fopid;
    property AuditState:boolean      read FAuditState    write FAuditState;

    constructor Create;
    destructor Destroy; override;
    function Search(aQuery:tuniquery;datefrom,dateto:tdatetime):boolean;
    function Add(aQuery:tuniquery):integer;
    function Update(aQuery:tuniquery):boolean;
    function Del(aQuery:tuniquery):boolean;
    function Save(aQuery:tuniquery):boolean;
  end;

  TPriceAdjustDetail=class
  private
    FRowid:integer;
    FMaster_rowid:integer;
    Fypbh:string;
    FPurchasePrice:currency;
    FPurchasePriceAdjust:currency;
    FInpatientSalesPrice:currency;
    FInpatientSalesPriceAdjust:currency;
    FOutPatientSalesPrice:currency;
    FOutPatientSalesPriceAdjust:currency;
    FAdjustReason:string;
    FMedbankStore:currency;
    FInpatientSotre:currency;
    FRate:currency;

  public
    property Rowid:integer read FRowid write FRowid;
    property Master_rowid:integer read FMaster_rowid write FMaster_rowid;
    property ypbh:string read Fypbh write Fypbh;
    property PurchasePrice:currency              read FPurchasePrice             write FPurchasePrice;
    property PurchasePriceAdjust:currency        read FPurchasePriceAdjust       write FPurchasePriceAdjust;
    property InpatientSalesPrice:currency        read FInpatientSalesPrice       write FInpatientSalesPrice;
    property InpatientSalesPriceAdjust:currency  read FInpatientSalesPriceAdjust write FInpatientSalesPriceAdjust;
    property OutPatientSalesPrice:currency       read FOutPatientSalesPrice      write FOutPatientSalesPrice;
    property OutPatientSalesPriceAdjust:currency read FOutPatientSalesPriceAdjust write FOutPatientSalesPriceAdjust;
    property AdjustReason:string                 read FAdjustReason              write FAdjustReason;
    property MedbankStore:currency               read FMedbankStore              write FMedbankStore;
    property InpatientSotre:currency             read FInpatientSotre            write FInpatientSotre;
    property Rate:currency                       read FRate                      write FRate;
    constructor Create;
    destructor Destroy; override;
    function Search(aQuery:tuniquery;Master_rowid:integer):boolean;
    function Add(aQuery:tuniquery;Master_rowid:integer):boolean;
    function Update(aQuery:tuniquery;rowid:integer):boolean;
    function Del(aQuery:tuniquery;rowid:integer):boolean;
    function Save(aQuery:tuniquery;Master_rowid:integer):boolean;
  end;

  TPriceAdjust=class
  private
    FRowid:integer;
    FMaster_rowid:integer;
    Fypbh:string;
    FPurchasePrice:currency;
    FPurchasePriceAdjust:currency;
    FInpatientSalesPrice:currency;
    FInpatientSalesPriceAdjust:currency;
    FOutPatientSalesPrice:currency;
    FOutPatientSalesPriceAdjust:currency;
    FAdjustReason:string;
    FMedbankStore:currency;
    FInpatientSotre:currency;
    FRate:currency;
    FEffectiveDate:tdatetime;
    FAdjustDate:tdatetime;
    Fopid:integer;
    FPriceAdjustMaster:TPriceAdjustMaster;
    FPriceAdjustDetail:TPriceAdjustDetail;
  public
    property Rowid:integer read FRowid write FRowid;
    property Master_rowid:integer read FMaster_rowid write FMaster_rowid;
    property ypbh:string read Fypbh write Fypbh;
    property PurchasePrice:currency              read FPurchasePrice             write FPurchasePrice;
    property PurchasePriceAdjust:currency        read FPurchasePriceAdjust       write FPurchasePriceAdjust;
    property InpatientSalesPrice:currency        read FInpatientSalesPrice       write FInpatientSalesPrice;
    property InpatientSalesPriceAdjust:currency  read FInpatientSalesPriceAdjust write FInpatientSalesPriceAdjust;
    property OutPatientSalesPrice:currency       read FOutPatientSalesPrice      write FOutPatientSalesPrice;
    property OutPatientSalesPriceAdjust:currency read FOutPatientSalesPriceAdjust write FOutPatientSalesPriceAdjust;
    property AdjustReason:string                 read FAdjustReason              write FAdjustReason;
    property MedbankStore:currency               read FMedbankStore              write FMedbankStore;
    property InpatientSotre:currency             read FInpatientSotre            write FInpatientSotre;
    property Rate:currency                       read FRate                      write FRate;
    property EffectiveDate:tdatetime read FEffectiveDate write FEffectiveDate;
    property AdjustDate:tdatetime read FAdjustDate write FAdjustDate;
    property opid:integer read Fopid write Fopid;
    constructor Create;
    destructor Destroy; override;
    function Search(aQuery:tuniquery):boolean;
    function Add(aQuery:tuniquery):boolean;
    function Update(aQuery:tuniquery):boolean;
    function Del(aQuery:tuniquery):boolean;
    function Save(aQuery:tuniquery):boolean;
  end;
const
      //PatientClass
        ALLPatient=99;
        OutPatient=100; //����
        InPatient =101; //סԺ
     // MedClass
        WesternMed=102;  //��ҩ
        ChineseMed=103;  //�в�ҩ
     //RipClass
        WesternRIP=104;      //��ҩ����
        WesternHocusRip=105; //��ҩ��������
        WesternTreatRip=106; //��ҩ���ƴ���
        ChineseMedRip=107;   //�в�ҩ����
        TreatRIP=108;      //���ƴ���
        MaterialRIP=109;      //���ϴ���
        ChineseMedRipReturn=110;
        WesternRIPReturn=111;
implementation

uses data;
{ TMedStore }

function TMedStore.CheckSend(aQuery: tuniquery; sendtype,
  sendno: string;yfbm:integer): integer;
begin
   result:=0;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('select b.ypbh from cfdb a ,cfyb b where a.cfdh=b.cfdh and sendno=:sendno and yfbm=:yfbm');
    if (sendtype='1') or  (sendtype='6')  then
        sql.Add('group by substring(a.roomid,1,4),zyh,a.cfdh,ifcz,b.ypbh');
    if  (sendtype='2')  then
     sql.Add('group by substring(a.roomid,1,4),zyh,a.cfdh,ifcz,b.ypbh');
    if  (sendtype='3') then
      sql.Add('group by substring(a.roomid,1,4),b.ypbh');
    if (sendtype='4') then
      sql.Add('group by a.ksbm,b.ypbh');
    if (sendtype='5') then
      sql.Add('group by substring(a.roomid,1,4),a.ksbm,b.ypbh');
    try
     parambyname('sendno').AsString:=sendno;
     parambyname('yfbm').AsInteger:=yfbm;

     open;
     result:=recordcount;
     //flog.AddLog('�ɹ�', '00004', '��ӡǰ��֤��','��ҩ���: '+sendno+'��¼��: '+inttostr(recordcount)+' ��ҩ����:'+sendtype,'',flogtype);
    except
      on E: Exception do
      begin
       //flog.AddLog('ʧ��', '00004', '��ӡǰ��֤��','��ҩ���: '+sendno+'��¼��: '+inttostr(recordcount)+' ��ҩ����:'+sendtype,e.message,flogtype);
       exit;
      end;
    end;
  end;
end;

function TMedStore.ClearMedstoreTemp(aQuery: tuniquery; deptid, yzlb,
  opid: integer; roomid, sendtype, optype: string;yfbm:integer): boolean;
begin
   result:=false;
  with  aQuery do
  begin
    close;
    sql.Clear;
    sql.add('exec  Medstore_ClearTmp  :deptid,:yzlb,:opid,:roomid,:sendtype,:optype,:yfbm');
    parambyname('deptid').asinteger:=deptid;
    parambyname('yzlb').asinteger:=yzlb;
    parambyname('opid').asinteger:=opid;
    parambyname('roomid').asstring:=roomid;
    parambyname('sendtype').asstring:=sendtype;
    parambyname('optype').asstring:=optype;
    parambyname('yfbm').AsInteger:=yfbm;
    try
      if  optype='1' then
      begin
        open;
       if fieldbyname('msg').asstring<>'' then   result:=true else result:=false
      end   else
      begin
         ExecSQL;
         result:=true;
      end;

    except
      messagedlg('��ѯʧ�ܣ�', mterror,[mbok],0);
      exit;
    end;
  end;
end;

function TMedStore.ClearlockMedinfo(aQuery: tuniquery; yfbm,
  opid: integer): boolean;
begin
   result:=false;
  with  aQuery do
  begin
    close;
    sql.Clear;
    sql.add('update cfdb set fyr=null where (fyr is not null) and (fyrq is null) and fyr=:opid and yfbm=:yfbm');
    sql.add('delete from MedStore_Temp where opid=:opid and yfbm=:yfbm');
    parambyname('yfbm').AsInteger:=yfbm;
    parambyname('opid').asinteger:=opid;
    try
      ExecSQL;
    except
      messagedlg('��ѯʧ�ܣ�', mterror,[mbok],0);
      exit;
    end;
  end;
end;

constructor TMedStore.Create;
begin
  FReportTemplatePath:=ExtractFilePath(Application.Exename)+'ykreport\';
end;

destructor TMedStore.Destroy;
begin
  inherited;
end;

function TMedStore.ExportXLS(tablename: string; aQuery: TDataSet; datefrom,
  dateto: tdatetime; TemplateName: string; TitleClass: byte): boolean;
 var   aSaveDialog:TSaveDialog;
       Report: TFlexCelReport;
begin
  aSaveDialog:=TSaveDialog.Create(NIL);
  aSaveDialog.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  aSaveDialog.FileName:=datetostr(NOW())+TemplateName+'.xlsx';
  if not aSaveDialog.Execute then exit;
  try
    Report := TFlexCelReport.Create(true);
    Report.AddTable(tableName, aquery);
    if TitleClass=0 then
      Report.SetValue('Title',datetostr(datefrom)+'��'+datetostr(dateto)+TemplateName)
    else
      Report.SetValue('Title',datetostr(dateto)+TemplateName);
    Report.Run(TPath.Combine(FReportTemplatePath, TemplateName+'.xlsx'), aSaveDialog.FileName);

    if MessageDlg('��������Ƿ���ļ�?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ShellExecute(0, 'open', PCHAR(aSaveDialog.FileName), nil, nil, SW_SHOWNORMAL);
    end;
  finally
    Screen.Cursor := crDefault;
    aSaveDialog.Free;
    Report.Free;
  end;
end;

function TMedStore.ExportXLSTitle(tablename: string; aQuery: TDataSet; datefrom,
  dateto: tdatetime; TemplateName: string; MyTitle: TMyTitle): boolean;
var   aSaveDialog:TSaveDialog;
      aReport: TFlexCelReport;
      axls:TXlsFile;
      aDoc:TFlexCelPrintDocument;

begin
  aSaveDialog:=TSaveDialog.Create(NIL);
  aSaveDialog.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  aSaveDialog.FileName:=datetostr(NOW())+TemplateName+'.xlsx';
  if not aSaveDialog.Execute then exit;
  try
    aReport := TFlexCelReport.Create(true);
    aReport.AddTable(tableName, aquery);
    aReport.SetValue('title',MyTitle.Title);    //����
    aReport.SetValue('RklbName',MyTitle.Frklbname);//������
    aReport.SetValue('Datefrom',MyTitle.FDateFrom);
    aReport.SetValue('Dateto',MyTitle.FDateto);
    aReport.SetValue('opidName',MyTitle.FopidName);
    aReport.SetValue('ghdw',MyTitle.Fghdw);
    aReport.SetValue('DeptName',MyTitle.FDeptName);
    aReport.SetValue('ifzf',MyTitle.Fifzf);
    aReport.Run(TPath.Combine(FReportTemplatePath, TemplateName+'.xlsx'), aSaveDialog.FileName);

    axls:=TXlsFile.Create(aSaveDialog.FileName);
    if MessageDlg('��������Ƿ���ļ�?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ShellExecute(0, 'open', PCHAR(aSaveDialog.FileName), nil, nil, SW_SHOWNORMAL);
    end;
  finally
    Screen.Cursor := crDefault;
    aSaveDialog.Free;
    aReport.Free;
    axls.Free;
    aDoc.free;
  end;
end;




function TMedStore.PrintSendMedDetail(MYTfrxReport: TfrxReport; aQuery: tuniquery;
  sendno:string; MedClass,kind, yfbm: integer): boolean;
begin
    with aQuery do
    begin
     close;
     sql.clear;
     sql.add('exec Medstore_SearchMedDetail :sendno,:kind,:yfbm');
     ParamByName('sendno').AsString:=sendno;
     ParamByName('kind').AsInteger:=kind;
     ParamByName('yfbm').AsInteger:=yfbm;
     open;
    end;

    MYTfrxReport.PrintOptions.ShowDialog:=false;
    case  MedClass of
    0:MYTfrxReport.LoadFromFile(FReportTemplatePath+'סԺ��ҩ����ϸ.fr3');
    1:MYTfrxReport.LoadFromFile(FReportTemplatePath+'��ҩ��ҩ��.fr3');
    end;

    //MYTfrxReport.LoadFromFile(FReportTemplatePath+'סԺ��ҩ����ϸ.fr3');
    MYTfrxReport.ShowReport();
end;

function TMedStore.PrintSendMedInfo(MYTfrxReport:TfrxReport;PatientClass,MedClass: integer): boolean;
begin
   CASE PatientClass OF
   OutPatient:
     begin
       MYTfrxReport.PrintOptions.ShowDialog:=false;
       MYTfrxReport.LoadFromFile(FReportTemplatePath+'���ﴦ����ҩ��.fr3');
       MYTfrxReport.PrepareReport;
//       if Sysinfo.mzfyprint=1 then
//          MYTfrxReport.Print
//        else
//          MYTfrxReport.ShowReport ;
     end;
   InPatient:
     begin
       MYTfrxReport.PrintOptions.ShowDialog:=false;
       case  MedClass of
       0:MYTfrxReport.LoadFromFile(FReportTemplatePath+'סԺ������ҩ��.fr3');
       1:MYTfrxReport.LoadFromFile(FReportTemplatePath+'��ҩ��ҩ��.fr3');
       end;
       MYTfrxReport.PrepareReport;
//      if Sysinfo.zyfyprint=1 then
//        MYTfrxReport.Print
//      else
//        MYTfrxReport.ShowReport();
      end;
   END;
end;

function TMedStore.PrintSendMedTotal(MYTfrxReport: TfrxReport;
  aQuery: tuniquery; sendno: string; MedClass, kind, yfbm: integer): boolean;
begin
    with aQuery do
    begin
     close;
     sql.clear;
     sql.Text:=
     '''
       select c.Inp_Place,d.ksmc,c.ypbh,rtrim(ltrim(c.ym)) as ym,c.gg,
        mryl= CASE
               WHEN (( Sum(b.mryl) > 0 ))
                    AND ( Sum(b.mryl) >= c.hsb )
                    AND ( Sum(b.mryl)%c.hsb = 0 ) THEN Ltrim(Rtrim(CONVERT(CHAR(10), Floor(Sum(b.mryl)/c.hsb))))+ c.jldw
               WHEN (( Sum(b.mryl) > 0 ))
                    AND ( Sum(b.mryl) >= c.hsb )
                    AND ( Sum(b.mryl)%c.hsb <> 0 ) THEN Rtrim(Ltrim(Rtrim(CONVERT(CHAR(10), Floor(Sum(b.mryl)/c.hsb))))+c.jldw)
                                                        + Ltrim(Rtrim(CONVERT(CHAR(10), Floor(Sum(b.mryl)%c.hsb))))
                                                        + c.zxdw COLLATE database_default
               ELSE Ltrim(Rtrim(CONVERT(CHAR(10), CONVERT(FLOAT, Sum(b.mryl)))))+ c.zxdw COLLATE database_default
             END
       ,c.zxdw,c.produce,qe=sum(b.qe),c.ylsj
       from cfdb a,cfyb b ,xyzb  c,jgxx d
       where a.cfdh=b.cfdh
         and b.ypbh=c.ypbh
         and a.ksbm=d.ksbm
         and sendno=:sendno
         and a.yfbm=:yfbm
      group by c.ypbh,c.ym,c.gg,c.zxdw,c.produce,d.ksmc,c.ylsj,c.Inp_Place,c.hsb,c.jldw
     ''';
     ParamByName('sendno').AsString:=sendno;
     //ParamByName('kind').AsInteger:=kind;
     ParamByName('yfbm').AsInteger:=yfbm;
     open;
    end;

    MYTfrxReport.PrintOptions.ShowDialog:=false;
    case  MedClass of
    0:MYTfrxReport.LoadFromFile(FReportTemplatePath+'סԺ��ҩ������.fr3');
    1:MYTfrxReport.LoadFromFile(FReportTemplatePath+'��ҩ��ҩ��.fr3');
    end;
    MYTfrxReport.ShowReport();
end;

{function TMedStore.SaveRipSign(aQuery:TuniQuery;UserID, PicName: string): boolean;
var
  strm: TBlobStream;
  gif: Tgifimage;
  pic_code: string;
  pimagepath: string;
  Bitmap: TBitmap;
begin
  pimagepath := ExtractFilePath(Application.ExeName) + 'images';
  if not directoryexists(pimagepath) then
    ForceDirectories(pimagepath);
  if FileExists(pimagepath + '\' + PicName) then
  deletefile(pchar(pimagepath + '\' + PicName));
  with aQuery do
  begin
    close;
    sql.Clear;
    SQL.Add('select * from zgzb_sign where bh=:UserID');
    parambyname('UserID').asinteger:=StrToInt(UserID);
    open;
    if fieldbyname('user_sign').IsNull then
    begin
      exit;
    end;

    strm := TBlobStream.Create(Tblobfield(fieldbyname('user_sign')), bmread);

    try
      strm.position := 0;
      bitmap := tbitmap.Create;
      gif := Tgifimage.Create;

      try //try11
        gif.LoadFromStream(strm);
        bitmap.Assign(gif);


        Bitmap.SaveToFile(pimagepath + '\' + PicName);
      finally
        bitmap.Free;
        gif.Free;
      end; //end try11
    finally
      strm.Free;
    end; //end try1
  end; // with

end;      }

function TMedStore.SearchInStore(aQuery: tuniquery;MedClass,SearchConditionClass: byte;
  datefrom, dateto: Tdatetime;
  SearchCondition: string): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.Add('SELECT   ');
    sql.Add('   b.lsh,0');
    sql.Add('   b.rkxh,');
    sql.Add('   a.ym,  ');
    sql.Add('   a.gg,  ');
    sql.Add('   a.jx,  ');
    sql.Add('   b.jhj, ');
    sql.Add('   b.lsj, ');
    sql.Add('   b.rksl, ');
    sql.Add('   b.jldw, ');
    sql.Add('   rkje1=b.jhj * b.rksl,');
    sql.Add('   rkje2=b.lsj * b.rksl,');
    sql.Add('   b.rkrq,');
    sql.Add('   b.sxrq,');
    sql.Add('   c.cm,  ');
    sql.Add('   d.inc_name,');
    sql.Add('   b.ypbh,    ');
    sql.Add('   b.ypph,    ');
    sql.Add('   a.checklbm,');
    sql.Add('   b.opid,    ');
    sql.Add('   b.pwh,     ');
    sql.Add('   b.scrq,    ');
    sql.Add('   b.rkrq,    ');
    sql.Add('   a.ybbm_country,');
    sql.Add('   a.ybmc_country ');
    sql.Add('FROM   xyzb a     ');
    sql.Add('       INNER JOIN xykr b');
    sql.Add('               ON a.ypbh = b.ypbh');
    sql.Add('       LEFT JOIN sccj c           ');
    sql.Add('              ON b.cjbm = c.cjbm  ');
    sql.Add('       LEFT JOIN ghdw d           ');
    sql.Add('              ON d.inc_code = b.ghdw');
    sql.Add('WHERE  Datediff(day, rkrq, :datefrom) <= 0');
    sql.Add('       AND Datediff(day, rkrq,:dateto) >= 0');

    case MedClass of
    0:sql.add(' ');
    1:sql.add('and a.lb=1');
    2:sql.add('and a.lb=2');
    3:sql.add('and a.lb=3');
    4:sql.add('and a.lb=4');
    end;

    if trim(SearchCondition)<>'' then
    begin
      case SearchConditionClass of
      0:begin
         sql.add('and b.ypbh=:ypbh');
         parambyname('ypbh').asstring:=trim(SearchCondition);
      end;
      1:begin
        sql.add('and b.rkdh=:rkdh');
         parambyname('rkdh').asstring:=trim(SearchCondition);
      end;
      end;
    end;
    sql.add('order by b.rkrq');
    ParamByName('datefrom').asdate:=datefrom;
    ParamByName('dateto').asdate:=dateto;
    open;
    if isempty then exit;
  end;
   result:=true;
end;

function TMedStore.SearchInStoreTotal(aQuery: tuniquery; SearchClass: integer;
  datefrom, dateto: Tdatetime): boolean;
begin
   result:=false;
   with aQuery do
   begin
    close;
    sql.clear;
    case SearchClass of
    0:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=xy_j_je,Ӧ�����=ze,���=plce  from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    1:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=zcy_j_je,Ӧ�����=ze,���=plce from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code ');
    2:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=cy_je,Ӧ�����=ze,���=plce    from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    3:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=xy_j_je+cy_je+zcy_j_je,Ӧ�����=ze,���=plce,�������=a.rkdate from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    end;
    //and a.ghdw not in(76,56)');
    case SearchClass of
       0:sql.add('and xy_j_je<>0   and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
       1:sql.add('and zcy_j_je<>0  and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
       2:sql.add('and cy_je<>0     and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh ');
       3:sql.add('and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
       4:begin
          sql.add('select b.lbm,Price=sum(rksl*lsj),PurchasePrice=sum(rksl*jhj),PriceSpread=sum(rksl*(lsj-jhj))');
          sql.add('from xykr a,xyzb b ');
          sql.add('where a.ypbh=b.ypbh and datediff(day,rkrq,:datefrom)<=0 and datediff(day,rkrq,:dateto)>=0');
          sql.add('group by b.lb,b.lbm');
         end;
       5:begin
           sql.add('select d.inc_code,d.inc_name,a.lb,a.lbm,Price=sum(b.lsj*b.rksl),PurchasePrice=sum(b.jhj*b.rksl),PriceSpread=sum(b.lsj*b.rksl)-sum(b.jhj*b.rksl)');
           sql.add('from xyzb a,xykr b,ghdw d');
           sql.add('where datediff(day,b.rkrq,:datefrom)<=0 ');
           sql.add('  and datediff(day,b.rkrq,:dateto)>=0   ');
           sql.add('  and a.ypbh=b.ypbh');
           sql.add('  and b.ghdw=d.inc_code');
           sql.add('group by d.inc_code,d.inc_name,a.lb,a.lbm');
           sql.add('order by d.inc_code,a.lb');
       end;
    end;
    parambyname('datefrom').asdate:=datefrom;
    parambyname('dateto').asdate:=dateto;
    open;
    if isempty then
    begin
        application.MessageBox('ѡ����ʱ�����û����ⵥ��','��Ϣ',32);
        exit;
    end  else
    result:=true;
  end;
end;

function TMedStore.SearchBalancesStore(aQuery: tuniquery; yfbm,MedClass: integer;
  datefrom, dateto: Tdatetime;SearchCondition:string): boolean;
begin
  result:=false;
  with aQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT        ');
    Sql.Add('       c.ypbh,');
    Sql.Add('       c.ym,  ');
    Sql.Add('       c.gg,  ');
    Sql.Add('       b.kcl, ');
    Sql.Add('       c.zxdw, ');
    Sql.Add('       dj=b.lsj,');
    Sql.Add('       c.jx,    ');
    Sql.Add('       je=Round(b.lsj * b.kcl, 4),');
    Sql.Add('       b.jhj,                      ');
    Sql.Add('       jhjqe=Round(b.jhj * b.kcl, 4),');
    Sql.Add('       a.dh,');
    Sql.Add('       a.ksbm,');
    Sql.Add('       a.opid,');
    Sql.Add('       a.rq   ');
    Sql.Add('FROM   pub_ypkcdb a, ');
    Sql.Add('       pub_ypkcmxb b, ');
    Sql.Add('       xyzb c         ');
    Sql.Add('WHERE  a.dh = b.dh    ');
    Sql.Add('       AND b.ypbh = c.ypbh');
    Sql.Add('       and a.ksbm=b.ksbm  ');
    Sql.Add('       and b.ksbm=:ksbm  ');
    SQL.Add('       and b.kcl<>0      ');
    SQL.Add('       and datediff(day,rq,:datefrom)<=0');
    SQL.Add('       and datediff(day,rq,:dateto)>=0');
    If Trim(SearchCondition)<>'' Then
    begin
       SQL.Add('and  c.ypbh=:ypbh');
       ParamByName('ypbh').Asstring:=trim(SearchCondition);
    end;

    case MedClass of
    0:sql.add(' ');
    1:sql.add('and c.lb=1');
    2:sql.add('and c.lb=2');
    3:sql.add('and c.lb=3');
    end;

    Sql.add('order by c.lb,c.ypbh');
    ParamByName('ksbm').assmallint:=yfbm;
    ParamByName('datefrom').asdatetime:=datefrom;
    ParamByName('dateto').asdatetime:=dateto;
    Open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchMedinfo(aQuery: tuniquery;yfbm:integer;
  SearchCondition: string): boolean;
VAR codelen,searchway:integer;
begin
   result:=false;
  with aQuery do
  begin
      Close;
      SQL.Clear;
      //SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,a.jldw,a.produce,a.pfj,a.YLSJ,a.mzylsj,a.hsb,a.cfhsb,a.type,a.skintry,b.kcl');
      //SQL.Add('from xyzb a left join nkyc b on a.ypbh=b.ypbh ');
      SQL.Add('SELECT  a.ypbh,ym,gg,produce,a.pfj,a.ypj,a.ylsj,a.mzylsj,jjyp,gf,zxdw,jldw,hsb,jx,lb,lbm,cjbm,storetype,pwh,StoreClass=b.mc,c.kcl,yfbm=d.StoreID');
      SQL.Add('FROM   XYZB a  (nolock)             ');
      SQL.Add(' INNER JOIN pub_constant b (nolock)');
      SQL.Add('        ON CONVERT(CHAR(10), a.ypkind) = b.bh');
      SQL.Add('        AND b.kind = 68                      ');
      SQL.Add('  LEFT JOIN nkyc c (nolock)                  ');
      SQL.Add('          ON a.ypbh = c.ypbh                 ');
      SQL.Add('  left JOIN MedStore_Relations d             ');
      SQL.Add('          ON b.bh = d.StoreClassID           ');
      SQL.Add('  WHERE  ifzy = 1                            ');
      SQL.Add('     and a.ylsj>0                            ');
      if yfbm=0 then
        SQL.Add('')
      else
      begin
        SQL.Add('      and ((d.StoreID=:yfbm) or (a.ypkind=99)) ');
        parambyname('yfbm').asinteger :=yfbm;
      end;

      SQL.Add('      and a.pym  like :SearchCondition');
      parambyname('SearchCondition').AsString :='%'+SearchCondition+'%';
      SQL.Add('order by a.lb,a.ypbh');
      Open;
     if isempty then
     begin
       Application.MessageBox('�޴�ҩƷ��','��Ϣ',mb_iconerror);
       exit;
     end;
  end;
  result:=true;
end;

function TMedStore.SearchOutStore(aQuery:tuniquery;yfbm,MedClass,StoreClass:integer;SearchCondition:string;datefrom,dateto:Tdatetime):boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add('select d.ckh,d.qldh,f.ksmc,b.ypbh,a.ym,a.gg,a.jx,d.cksl,a.zlm,a.groupbuy,a.jldw,d.lsj,ckje=d.cksl*d.lsj,d.ckrq,d.ckr,d.lyr,b.lsh,d.rkxh,produce=c.cm COLLATE DATABASE_DEFAULT,a.ybbm_country,a.ybmc_country,abstract='''' ');
    sql.add('from xyzb a,xykr b,sccj c,xykchu d,jgxx f');
    sql.add('where a.ypbh=b.ypbh');
    sql.add('  and b.cjbm=c.cjbm');
    sql.add('  and b.rkxh=d.rkxh');
    sql.add('  and f.ksbm=d.ksbm');
    sql.add('  and datediff(day,ckrq,:datefrom )<=0');
    sql.add('  and datediff(day,ckrq,:dateto   )>=0 ');
    if yfbm<>0 then
    begin
      sql.add('  and d.ksbm=:yfbm');
      parambyname('yfbm').AsInteger:=yfbm;
    end;
    case MedClass of
    0:sql.add(' ');
    1:sql.add('and a.lb=1');
    2:sql.add('and a.lb=2');
    3:sql.add('and a.lb=3');
    4:sql.add('and a.lb=4');
    end;

    If Trim(SearchCondition)<>'' Then
    begin
     sql.add('and b.ypbh=:ypbh');
     parambyname('ypbh').asstring:=Trim(SearchCondition)
    end;
    case StoreClass of
    0:sql.add(' ') ;
    1:sql.add('and d.ksbm<>888');
    2:sql.add('and d.ksbm=888');
    end;
     sql.add('order by d.ckh');
    ParamByName('datefrom').asdate:=datefrom;
    ParamByName('dateto').asdate:=dateto;

    open;
    if isempty then exit;
  end;
    result:=true;
end;

function TMedStore.SearchOutStoreTotal(aQuery: tuniquery; PatientClass,DTClass: integer;
  datefrom, dateto: Tdatetime): boolean;
begin
   result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      CASE PatientClass OF
      OutPatient:
        begin
          SQL.Add('select case b.checklb when 1 then ''��ҩ''   when 2 then ''��ҩ''   else ''��ҩ'' end as ҩƷ���,���=sum(b.qe)');
          SQL.Add('from MZcfdb a,mzcfyb b,depcheck c ');
          SQL.Add('where  a.no=c.no  ');
          SQL.Add('and a.cfdh=b.cfdh  ');
          SQL.Add('and a.MZH=c.mzh  ');
          case  DTClass of
          0:SQL.Add('and datediff(DAY,a.fyrq,:datefrom)<=0 and datediff(DAY,a.fyrq,:dateto)>=0  ');
          1:SQL.Add('and datediff(DAY,b.rjdate,:datefrom)<=0 and datediff(DAY,b.rjdate,:dateto)>=0 ');
          2:SQL.Add('and datediff(DAY,a.cfrq,:datefrom)<=0 and datediff(DAY,a.cfrq,:dateto)>=0  ')
          end;
          SQL.Add('group by  b.checklb ');
        end;
      InPatient:
        begin
          SQL.Add('select case b.checklb when 1 then ''��ҩ''   when 2 then ''��ҩ''   else ''��ҩ'' end as ҩƷ���,���=sum(b.qe) from cfdb a,cfyb b,zy_byinfo c ');
          SQL.Add('where a.cfdh=b.cfdh and  a.zyh=c.zyh  ');
          case  DTClass of
          0:SQL.Add('and datediff(DAY,a.fyrq,:datefrom)<=0 and datediff(DAY,a.fyrq,:dateto)>=0  ');
          1:SQL.Add('and DATEDIFF(DAY,c.rysj+a.no,:datefrom) <=0 and DATEDIFF(DAY,c.rysj+a.no,:dateto)>=0 ');
          2:SQL.Add('and datediff(DAY,a.cfrq,:datefrom)<=0 and datediff(DAY,a.cfrq,:dateto)>=0  ')
          end;
          SQL.Add('group by  b.checklb ');
        end;
      end;
      ParamByName('datefrom').AsDate:=datefrom;
      ParamByName('dateto').AsDate:=dateto;
      Open;
      if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchPurchaseSaleStock(aQuery: tuniquery;opid: integer; datefrom, dateto: Tdatetime): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add('exec pub_ykjxchz :datefrom,:dateto,:opid ,:kind');
    parambyname('kind').assmallint :=0;
    parambyname('datefrom').asdatetime:=datefrom;
    parambyname('dateto').asdatetime:=dateto;
    parambyname('opid').asinteger:=opid;
    open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchReturnApplyID(aQuery: tuniquery; no,
  mzh: integer): integer;
begin
   result:=0;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add(' select id from medstore_Return where jsdh=:no and zyh=:mzh and type=1');
    parambyname('no').asinteger :=no;
    parambyname('mzh').asinteger:=mzh;
    open;
    if NOT isempty then
      result:=fieldbyname('id').AsInteger
    ELSE
     EXIT;
  end;
end;

function TMedStore.SearchReturnStore(aQuery: tuniquery; yfbm,PatientClass,
  DTClass: integer; datefrom, dateto: Tdatetime;SearchCondition:string): boolean;
begin
   result:=false;
    with aQuery do
    begin
      close;
      sql.Clear;
      SQL.Add('SELECT a.ID,    ');
      SQL.Add('  CASE a.[type] ');
      SQL.Add('    WHEN 1 THEN ''����'' ');
      SQL.Add('    ELSE ''סԺ''    ');
      SQL.Add('  END   AS PatClass,  ');
      SQL.Add('  CASE Isnull(affirmopid, 999)');
      SQL.Add('    WHEN 999 THEN ''����ҩ''  ');
      SQL.Add('    ELSE ''���˷�''           ');
      SQL.Add('  END   AS state,             ');
      SQL.Add('  a.zyh AS PatID,             ');
      SQL.Add('  CASE [type]                 ');
      SQL.Add('    WHEN 1 THEN (SELECT name   ');
      SQL.Add('                 FROM   DepPatientInfo');
      SQL.Add('                 WHERE  mzh = a.zyh)');
      SQL.Add('    ELSE (SELECT byxm                ');
      SQL.Add('          FROM   zy_byinfo           ');
      SQL.Add('          WHERE  zyh = a.zyh)        ');
      SQL.Add('  END   AS PatName,                  ');
      SQL.Add('  b.xmbm,                            ');
      SQL.Add('  b.xmmc,                            ');
      SQL.Add('  b.gg,                              ');
      SQL.Add('  b.USEnum AS QTY,                   ');
      SQL.Add('  b.useunit,                         ');
      SQL.Add('  b.sfbz,                            ');
      SQL.Add('  b.qe,                              ');
      SQL.Add('  b.cfdh,                            ');
      SQL.Add('  a.jsdh,                            ');
      SQL.Add('  a.applydate,                       ');
      SQL.Add('  a.applyopid,                       ');
      SQL.Add('  a.affirmdate,                      ');
      SQL.Add('  a.affirmopid,                      ');
      SQL.Add('  CASE ksbm                              ');
      SQL.Add('      WHEN 0 THEN (SELECT ksmc           ');
      SQL.Add('                   FROM   DepPatientInfo ');
      SQL.Add('                   WHERE  mzh = a.zyh)   ');
      SQL.Add('      ELSE (SELECT ksmc                  ');
      SQL.Add('            FROM   jgxx                  ');
      SQL.Add('            WHERE  ksbm = b.ksbm)        ');
      SQL.Add('    END   AS ksmc                        ');
      SQL.Add('FROM   medstore_Return a (nolock)    ');
      SQL.Add('       JOIN medstore_ReturnDetail b  (nolock) ');
      SQL.Add('         ON a.ID = b.applyID         ');
      SQL.Add('WHERE  1=1   ');
      if PatientClass<>0 then
      begin
        SQL.Add('AND   type=:PatientClass   ');
        ParamByName('PatientClass').AsInteger :=PatientClass;
      end;
      if yfbm<>0 then
      begin
        SQL.Add('AND   yfbm=:yfbm   ');
        ParamByName('yfbm').AsInteger :=yfbm;
      end;
      case DTClass of
      0:begin
         SQL.Add('and datediff(day,a.applydate,:datefrom)<=0');
         SQL.Add('and datediff(day,a.applydate,:dateto)>=0');
       end;
      1:begin
         SQL.Add('and datediff(day,a.affirmdate,:datefrom)<=0');
         SQL.Add('and datediff(day,a.affirmdate,:dateto)>=0');
       end;
     end ;
     if SearchCondition<>'' then
     begin
       SQL.Add('and b.xmbm=:SearchCondition');
       parambyname('SearchCondition').AsString :=SearchCondition;
     end;
     SQL.Add('ORDER  BY a.ID');
     parambyname('datefrom').asdatetime :=datefrom;
     parambyname('dateto').asdatetime :=dateto;
     open;
     if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchRipTitle(aQuery: tuniquery;
  mzh,no: integer): boolean;
begin
  result:=false;
  with aQuery do
  begin
     Close  ;
     Sql.Clear ;
     Sql.Add('EXEC Medstore_searchRipTitle :MZH,:no');
     parambyname('MZH').AsInteger:=mzh;
     parambyname('no').AsInteger:=no;
     Open ;
     if isempty then exit;
  end ;
  result:=true;
end;

function TMedStore.SearchRipDetail(aQuery: tuniquery;
  RipClass,cfdh: integer): boolean;
begin
  result:=false;
  CASE RipClass OF
    WesternRIP:   //��ҩ����
    begin
       with aQuery do   //ҩƷ��
       begin
         close;
         Sql.Clear ;
         Sql.add('select [use]=a.usage,yl=rtrim(ltrim(convert(char(10),a.mryl)))+rtrim(ltrim(a.cfzxdw))+''/��'',');
         Sql.add('zsldw=rtrim(ltrim(convert(char(10),convert(float,a.usenum))))+rtrim(ltrim(a.useunit)),cflb=''��'', ');
         Sql.add('a.* From mz_yz_db a,xyzb b');
         Sql.add('where (a.xmbm=b.ypbh) and (a.yzlb&255=1)');
         Sql.Add('and (a.cfdh =:cfdh)  and (b.checklb in (1,2,3))') ;
         Sql.Add('and (b.zlbm not in (2,3,4,5,10))');
       end;
    end;
    WesternHocusRip: //��ҩ��������
    begin
      with aQuery do
      begin
        Sql.add('select [use]=a.usage,yl=rtrim(ltrim(convert(char(10),a.mryl)))+rtrim(ltrim(a.cfzxdw))+''/��'',');
        Sql.add('zsldw=rtrim(ltrim(convert(char(10),convert(float,a.usenum))))+rtrim(ltrim(a.useunit)),cflb=''��'', ');
        Sql.add('a.* From mz_yz_db a,xyzb b');
        Sql.add('where (a.xmbm=b.ypbh) and (a.yzlb&255=1)');
        Sql.Add('and (a.cfdh =:cfdh) and (b.zlbm in (2,3,4,5))') ;
      end;
    end;
    WesternTreatRip:    //��ҩ���ƴ���
    begin
      with aQuery do
      begin
        Sql.add('select [use]=a.usage,yl=rtrim(ltrim(convert(char(10),a.mryl)))+rtrim(ltrim(a.cfzxdw))+''/��'',');
        Sql.add('zsldw=rtrim(ltrim(convert(char(10),convert(float,a.usenum))))+rtrim(ltrim(a.useunit)),cflb=''��'', ');
        Sql.add('a.* From mz_yz_db a,xyzb b');
        Sql.add('where (a.xmbm=b.ypbh) and (a.yzlb&255=1)');
        Sql.Add('and (a.cfdh =:cfdh) and (b.checklb not in (1,2,3))') ;
        Sql.Add('and (b.zlbm not in (2,3,4,5,10))');
      end;
    end;
    MaterialRIP: //���ϴ���
    begin
      with aQuery do
      begin
        Sql.add('select [use]=a.usage,yl=rtrim(ltrim(convert(char(10),a.mryl)))+rtrim(ltrim(a.cfzxdw))+''/��'',');
        Sql.add('zsldw=rtrim(ltrim(convert(char(10),convert(float,a.usenum))))+rtrim(ltrim(a.useunit)),cflb=''��'', ');
        Sql.add('a.* From mz_yz_db a,xyzb b');
        Sql.add('where (a.xmbm=b.ypbh) and (a.yzlb&255=1)');
        Sql.Add('and (a.cfdh =:cfdh)') ;
        Sql.Add('and b.zlbm  in (10)');
      end;
    end;
    ChineseMedRip:  //�в�ҩ����
    begin
      with aQuery do
      begin
        close;
        Sql.Clear ;
        Sql.add('select a.XH,a.groupid,a.ypbh,a.yznr,a.mryl,a.ts,a.zsl,a.ylsj,a.QE,a.OPID,');
        Sql.add('a.cfdh,a.mzh,[use]=a.usage,a.frequency,a.cfzxdw,a.zxdw,a.yfbm,cflb=''��'' ');
        Sql.add('From mz_yz_db a ');
        Sql.add('where (a.yzlb&255=2)');
        Sql.Add('and a.cfdh=:cfdh') ;
      end;
    end;
    TreatRIP:     //���ƴ���
    begin
      with aQuery do
      begin
      close;
      Sql.add('select a.* From mz_yz_db a');
      Sql.add('where a.yzlb&255 not in (1,2)');
      Sql.Add('and a.cfdh=:cfdh') ;
      end;
    end;
    WesternRIPReturn:
    begin
     with aQuery do
     begin
      Sql.text:=
      '''
       select
        [use]=c.usage
       ,yl=rtrim(ltrim(convert(char(10),c.mryl)))+rtrim(ltrim(c.cfzxdw))+'/��'
       ,zsldw='-'+rtrim(ltrim(convert(char(10),convert(float,b.usenum))))+rtrim(ltrim(b.useunit))
       ,cflb='��'
       ,c.gg,c.yznr,c.frequency,c.grdchar,qe=-b.qe,b.cfdh
      from medstore_Return a,medstore_ReturnDetail b,mz_yz_db c
      where a.id=b.applyid
        and b.yzxh=c.XH
        and b.yzlb&255=1
        and b.cfdh=:cfdh
     ''' ;
     end;
    end;
    ChinesemedRIPReturn:
    begin
     with aQuery do
     begin
      Sql.text:=
      '''
       select
        [use]=c.usage
       ,yl=''
       ,zsldw=rtrim(ltrim(convert(char(10),convert(float,b.usenum))))+rtrim(ltrim(b.useunit))
       ,cflb='��'
       ,c.gg,c.yznr,c.frequency,c.grdchar,qe=-b.qe,b.cfdh
      from medstore_Return a,medstore_ReturnDetail b,mz_yz_db c
      where a.id=b.applyid
        and b.yzxh=c.XH
        and b.yzlb&255=2
        and b.cfdh=:cfdh
     ''' ;
     end;
    end;
  end;
  try
    aQuery.ParamByName('cfdh').asinteger:=cfdh;
    aQuery.open;
    if aQuery.isempty then exit;
  except
  on E: Exception do
  begin
    Application.MessageBox(PChar('���ݲ�ѯ����'+e.message),'������Ϣ',mb_iconerror);
    Exit ;
    end;
  end ;
  result:=true;
end;

function TMedStore.SearchNOSendRIPinfo(aQuery: tuniquery; yfbm: integer): boolean;
begin
 result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Text:=
    '''
        SELECT DISTINCT b.CFDH,
                PatName=a.byxm,
                case b.cflb when 1 then '��ҩ'  when 2 then '��ҩ' end  cflbName,
                (b.cflb&255) as cflb,
                b.qe,
                a.ksmc
      FROM   zy_byInfo a,
             cfdb b (nolock)
      WHERE  a.zyh = b.zyh
         AND b.qe > 0
         AND b.yfbm = :yfbm
         AND b.fyrq IS NULL
         AND b.fyrq IS NULL
         AND a.cysj IS NULL
      ORDER  BY patName
     ''';
    parambyname('yfbm').AsInteger:=yfbm;
    open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchSendMedDept(aQuery: tuniquery;
  deptClass: integer): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    case deptClass of
    0:sql.Add('select * from jgxx ');
    1:sql.Add('exec clinic_printdetail :cfdh');
    end;
    open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchSendMedInfo(aQuery:tuniquery;PatientClass, cfdh: integer): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    case PatientClass of
    OutPatient:
     sql.Add('exec clinic_printdetail :cfdh');
    InPatient:
    end;
    parambyname('cfdh').AsInteger:=cfdh;
    open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchStoreChange(aQuery:tuniquery;yfbm:integer;datefrom, dateto: Tdatetime;
  MedClass: integer;SearchCondition:string):boolean;
begin
 result:=false;
 with aQuery do
 begin
   close;
   sql.clear;
   sql.Add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,dest=isnull(a.source,0)+isnull(a.change,0),b.zxdw,a.lsj,a.[time],');
   sql.Add('je=round(a.lsj*a.change,2),b.lb,opid=c.xm,a.memo,jhj=a.pfj,jhjqe=round(a.pfj*a.change,2)');
   if yfbm=500 then
     sql.add('from pub_yk_pdb a,xyzb b,zgzb c')
   else
     sql.add('from zy_yf_pdb  a,xyzb b,zgzb c');
   sql.add('where a.ypbh=b.ypbh');
   sql.add('and a.opid=c.bh');
   sql.add('and datediff(day,time,:datefrom)<=0');
   sql.add('and datediff(day,time,:dateto  )>=0');
   if yfbm=500 then
     sql.add('')
   else
   begin
     sql.add('and a.yfbm=:yfbm');
     parambyname('yfbm').AsInteger :=yfbm;
   end;
   If trim(SearchCondition)<>'' Then
   begin
     sql.add('and a.ypbh=:ypbh');
     parambyname('ypbh').asstring :=trim(SearchCondition);
   end;
   case MedClass of
   0:sql.add(' ');
   1:sql.add('and b.lb=1');
   2:sql.add('and b.lb=2');
   3:sql.add('and b.lb=3');
   4:sql.add('and b.lb=4');
   end;
   parambyname('datefrom').asdatetime :=datefrom;
   parambyname('dateto').asdatetime :=dateto;
   sql.add('order by b.lb,a.ypbh');
   open;
   if isempty then exit;
 end;
  result:=true;
end;

function TMedStore.GetMyDataSet: Tuniquery;
begin
  Result :=FMyDataSet;
end;

procedure TMedStore.SetMyDataSet(value: Tuniquery);
begin
  FMyDataSet := value;
end;


function TMedStore.SearchProfitStore(aQuery: tuniquery; MedClass,
  SearchClass: integer; datefrom, dateto: Tdatetime): boolean;
begin
 result:=false;
 with aQuery do
 begin
   close;
   sql.clear;
   sql.Add('exec total_medbid :datefrom,:dateto,:lb,:kind');
   parambyname('datefrom').asdate := datefrom;
   parambyname('dateto').asdate :=dateto;
   parambyname('lb').AsInteger :=MedClass;
   parambyname('kind').AsInteger :=SearchClass;
   open;
   if isempty then exit;
 end;
 result:=true;
end;

function TMedStore.SearchPatientCount(aQuery: tuniquery;
  sendno: string): integer;
begin
  result:=0;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.Text:=
    '''
      SELECT Count(*) AS PatQty
      FROM   (SELECT Count(*) AS PatQty
          FROM   cfdb
          WHERE  sendno = :sendno
          GROUP  BY zyh) a
     ''';
    parambyname('sendno').asstring:=sendno;
    open;
    if not isempty then
    result:=fieldbyname('PatQty').asinteger;
  end;
end;

function TMedStore.SearchPriceChangeStore(aQuery: tuniquery;
  MedClass: integer; datefrom, dateto: Tdatetime;
  SearchCondition: string): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add('SELECT c.ypbh,');
    sql.add('   c.ym,');
    sql.add('   c.gg,');
    sql.add('   c.zxdw,');
    sql.add('   c.jldw,');
    sql.add('   c.produce,');
    sql.add('   b.Rowid,');
    sql.add('   b.Master_rowid,');
    sql.add('   b.PurchasePrice,');
    sql.add('   b.PurchasePriceAdjust,');
    sql.add('   b.InpatientSalesPrice,');
    sql.add('   b.InpatientSalesPriceAdjust,');
    sql.add('   b.OutPatientSalesPrice,');
    sql.add('   b.OutPatientSalesPriceAdjust,');
    sql.add('   b.AdjustReason,');
    sql.add('   b.MedbankStore,');
    sql.add('   b.InpatientSotre,');
    sql.add('   a.Rowid, ');
    sql.add('   a.EffectiveDate,');
    sql.add('   a.AdjustDate,   ');
    sql.add('   a.opid,          ');
    sql.add('   case AuditState when 1 then ''�����'' else ''δ���'' end as AuditState');
    sql.add('FROM               ');
    sql.add('   Medbank_PriceAdjustMaster a,');
    sql.add('   Medbank_PriceAdjustDetail b,');
    sql.add('   xyzb c');
    sql.add('WHERE  a.rowid = b.master_rowid');
    sql.add('   AND b.ypbh = c.ypbh');
    sql.add('   AND a.AuditState =1');
    sql.add('   and datediff(day,a.AdjustDate,:datefrom)<=0');
    sql.Add('   and datediff(day,a.AdjustDate,:dateto)>=0');
    case MedClass of
    0:sql.add(' ');
    1:sql.add('and c.lb=1');
    2:sql.add('and c.lb=2');
    3:sql.add('and c.lb=3');
    4:sql.add('and c.lb=4');
    end;

    If Trim(SearchCondition)<>'' Then
    begin
     sql.add('and b.ypbh=:ypbh');
     parambyname('ypbh').asstring:=Trim(SearchCondition);
    end ;
    parambyname('datefrom').asdatetime:=datefrom;
    parambyname('dateto').asdatetime:=dateto;
    open;
  end;
  result:=true;
end;

function TMedStore.SearchMedinfo(aQuery:tuniquery;StopStatus,Medclass,StoreClass,SearchClass:integer;SearchCondition:string;datefrom,dateto:tdatetime): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,basicMed=case basic when 1 then ''��'' else '''' end,');
    sql.Add('TypeName=case type when 98 then ''�ɲ��'' when 99 then ''���ɲ��'' else ''δ֪'' end,');
    sql.Add('ypkindName=b.mc,c.kcl,c.OccupyKcl,');
    //2023.11.02 wk �۸�0�޷�����
    sql.Add('case  when a.pfj=0 then null else convert(varchar(20),(round(a.mzylsj/a.pfj,2)-1)*100)+''%'' end as OutPatRate,');
    sql.Add('case  when a.pfj=0 then null else convert(varchar(20),(round(a.ylsj/a.pfj,2)-1)*100)+''%'' end as InPatRate');
    sql.Add('from XYZB a (nolock) inner join pub_constant b (nolock) ');
    sql.Add('on convert(char(10),a.ypkind)=b.bh and b.kind=68 ');
    sql.Add('left join nkyc c  (nolock) on a.ypbh=c.ypbh    ');
    sql.Add('where  1=1');
    case StopStatus of
    0:sql.add(' ');
    1:sql.add(' and a.ifzy=1');
    2:sql.add(' and a.ifzy=0');
    3:begin
        sql.add(' and datediff(day,a.sxrq,:datefrom)<=0');
        sql.add(' and datediff(day,a.sxrq,:dateto)>=0 ');
        sql.add(' and c.kcl>0');
        parambyname('datefrom').AsDate:=datefrom;
        parambyname('dateto').AsDate:=dateto;
      end;
    end;
    case StoreClass of
    0:sql.add('');
    else
      begin
        sql.Add('and a.ypkind=:StoreClass');
        parambyname('StoreClass').AsInteger:=StoreClass;
      end;
    end;
    case MedClass of
    0:sql.add(' ');
    1:sql.add('and a.lb=1');
    2:sql.add('and a.lb=2');
    3:sql.add('and a.lb=3');
    4:sql.add('and a.lb=4');
    end;

    case  SearchClass of
    0:sql.add(' and a.pym like :pym');
    1:sql.add(' and a.ypbh like :pym');
    2:sql.add(' and a.ym like :pym');
    3:sql.add(' and a.pwh like :pym');
    end;

    parambyname('pym').AsString:='%'+trim(SearchCondition)+'%';

    open;
    if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchStore(aQuery:tuniquery;Medlb, MaxValue, MedType: integer;
  Medcode: string; Zero: boolean): boolean;
begin
   result:=false;
  with aQuery do
  begin
    Close;
    sql.clear;
    sql.add('MedBank_store :Medlb,:MaxValue,:MedType,:Medcode,:Zero');
    ParamByName('Medlb').AsInteger:=Medlb;
    ParamByName('MaxValue').AsInteger:=MaxValue;
    ParamByName('MedType').AsInteger:=MedType;
    ParamByName('Medcode').AsString:=Medcode;
    ParamByName('Zero').AsBoolean :=Zero;
    open;
    if isempty then exit;
  end;
   result:=true;
end;

function TMedStore.SearchStoreClassRelations(aQuery: tuniquery;
  StoreClassID: integer): integer;
begin
  result:=0;
  with aQuery do
  begin
    Close;
    sql.clear;
    sql.add('select ksbm=a.storeid,b.ksmc,a.StoreClassID,StoreCLass=c.mc');
    sql.add('from MedStore_Relations a,jgxx b,pub_constant c');
    sql.add('where a.storeid=b.ksbm');
    sql.add('and   a.StoreClassID=c.bh');
    sql.add('and   c.kind=68');
    sql.add('and   a.StoreClassID=:StoreClassID');
    parambyname('StoreClassID').AsInteger:=StoreClassID;
    open;
    if isempty then
      exit
    else
      result:=aQuery.RecordCount;
  end;

end;

function TMedStore.GetMedID(aQuery:tuniquery): String;
var aStrlen:integer;
    aStr:string;
begin
  result:='0000001';
  with  aQuery do
  begin
    close;
    sql.Clear;
    sql.add('select MedID=max(ypbh)+1 from xyzb ');
    open;
    if not isempty then
    begin
      aStr:=fieldbyname('MedID').AsString;
      aStrlen:=length(aStr);
      case aStrlen of
      1:aStr:='000000'+aStr;
      2:aStr:='00000'+aStr;
      3:aStr:='0000'+aStr;
      4:aStr:='000'+aStr;
      5:aStr:='00'+aStr;
      6:aStr:='0'+aStr;
      end;
    end else exit;
  end;
  result:=aStr;
end;

function TMedStore.GetSendno(aQuery: tuniquery): string;
begin
 result:='';
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('exec  Medstore_GetSendno ');
    try
     open;
     result:=fieldbyname('sendno').AsString;
     //flog.AddLog('�ɹ�', '00002', '������ҩ��ţ�','��ҩ���:'+result,'',flogtype);
    except
     //flog.AddLog('ʧ��', '00002', '������ҩ��ţ�','��ҩ���:'+result,'',flogtype);
     exit;
    end;
  end;
end;

procedure TMedStore.GetStoreCLass(aQuery: tuniquery; yfbm: integer;
  MyRgp: TRadioGroup);
begin
   with aQuery do
   begin
     close;
     sql.clear;
     {sql.add('select a.StoreClassID,c.mc ');
     sql.add('from MedStore_Relations a,jgxx b,pub_constant c ');
     sql.add('where a.storeid=b.ksbm ');
     sql.add('and   a.StoreClassID=c.bh ');
     sql.add('and   c.kind=68');}

     sql.add('SELECT A.BH,A.MC ');
     sql.add('FROM   pub_constant a');
     sql.add('LEFT JOIN MedStore_Relations b');
     sql.add('         ON a.bh = b.StoreClassID');
     sql.add('WHERE  a.kind = 68');

     open;
     first;
     MyRgp.Items.Clear;
     MyRgp.Items.Add('0:ȫ��');
     while not eof do
     begin
       MyRgp.Items.Add(fields[0].asstring+':'+fields[1].asstring);
       next;
     end;
   end;
    MyRgp.ItemIndex:=0;
end;

function TMedStore.SearchInStoreDetail(aQuery: tuniquery;rkrq:string;lsh: integer): boolean;
begin
  result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      sql.Add('SELECT lsh,');
      sql.Add(' a.rkxh,   ');
      sql.Add(' b.ypbh,   ');
      sql.Add(' b.ym,     ');
      sql.Add(' b.gg,      ');
      sql.Add(' a.produce, ');
      sql.Add(' rkrq=CONVERT(VARCHAR(10), a.rkrq, 120),');
      sql.Add(' rksl=Sum(rksl),  ');
      sql.Add(' a.jldw,          ');
      sql.Add(' SalesPrice=a.lsj,');
      sql.Add(' SalesSum=Sum(rksl * a.lsj),');
      sql.Add(' PurchasePrice= a.pfj,       ');
      sql.Add(' PurchaseSum=Sum(a.pfj * rksl),');
      sql.Add(' diffSum=Sum(rksl * a.lsj) - Sum(a.pfj * rksl),');
      sql.Add(' a.ypph,');
      sql.Add(' sxrq=CONVERT(VARCHAR(10), a.sxrq, 120)');
      sql.Add('FROM   xykr a,                         ');
      sql.Add('       xyzb b                          ');
      sql.Add('WHERE  a.ypbh = b.ypbh                 ');
      sql.Add('       AND convert(varchar(10),rkrq,120)=:rkrq');
      sql.Add('       AND lsh = :lsh');
      sql.Add('GROUP  BY lsh,       ');
      sql.Add('          CONVERT(VARCHAR(10), a.rkrq, 120),      ');
      sql.Add('          b.ypbh,    ');
      sql.Add('          b.ym,      ');
      sql.Add('          b.gg,      ');
      sql.Add('          a.produce, ');
      sql.Add('          A.lsj,     ');
      sql.Add('          a.pfj,     ');
      sql.Add('          a.ypph,    ');
      sql.Add('          a.sxrq,    ');
      sql.Add('          a.jldw,     ');
      sql.Add('          a.rkxh     ');
      parambyname('rkrq').AsString:=rkrq;
      parambyname('lsh').AsInteger:=lsh;
      try
        open;
      if isempty then exit;
      except
      on E: Exception do
          begin
            application.MessageBox(pchar('��ѯ����'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
            exit;
          end;
      end;
   end;
   result:=true;
end;

function TMedStore.SearchInStoreMaster(aQuery: tuniquery;yfbm:integer;
  SearchConditionClass: byte; datefrom, dateto: Tdatetime;
  SearchCondition: string;rklb,ghdwcode:integer): boolean;
begin
   result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      sql.Add('SELECT lsh,');
      sql.Add(' c.inc_name,');
      sql.Add(' rkrq=convert(varchar(10),rkrq,120),');
      sql.Add(' rksl=Sum(rksl),                    ');
      sql.Add(' SalesSum=Sum(rksl * lsj),          ');
      sql.Add(' PurchaseSum=Sum(pfj * rksl),       ');
      sql.Add(' diffSum=Sum(rksl * lsj) - Sum(pfj * rksl),');
      sql.Add(' b.xm                                ');
      sql.Add('FROM   xykr a,zgzb b,ghdw c          ');
      sql.Add('WHERE                                ');
      sql.Add(' a.opid=b.bh                         ');
      sql.Add(' and a.ghdw=c.inc_code               ');
      sql.Add(' and Datediff(DAY, rkrq, :datefrom) <= 0');
      sql.Add(' and Datediff(DAY, rkrq, :dateto) >= 0 ');
      if yfbm<>0 then
      begin
        sql.Add(' and a.yfbm=:yfbm');
        parambyname('yfbm').AsInteger:=yfbm;
      end;
      if rklb<>0 then
      begin
        sql.Add(' and a.rklb=:rklb');
        parambyname('rklb').AsInteger:=rklb;
      end;
      if ghdwcode<>0 then
      begin
        sql.Add(' and a.ghdw=:ghdw');
        parambyname('ghdw').AsInteger:=ghdwcode;
      end;
      sql.Add('GROUP  BY convert(varchar(10),rkrq,120),lsh,c.inc_name,b.xm');
      parambyname('datefrom').AsDateTime:=datefrom;
      parambyname('dateto').AsDateTime:=dateto;
      try
        open;
      except
      on E: Exception do
          begin
            application.MessageBox(pchar('��ѯ����'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
            exit;
          end;
      end;
   end;
   result:=true;
end;

function TMedStore.SearchInStoreDetail(aQuery: tuniquery;yfbm:integer;datefrom,dateto: tdatetime;SearchConditionClass: byte;SearchCondition: string;rklb,ghdwcode:integer): boolean;
begin
  result:=false;
  with aQuery do
  begin
    close;
    sql.clear;
    sql.Add('SELECT   ');
    sql.Add('   b.lsh,');
    sql.Add('   b.rkxh,');
    sql.Add('   b.ypbh,    ');
    sql.Add('   a.ym,  ');
    sql.Add('   a.gg,  ');
    sql.Add('   b.produce,  ');
    sql.Add('   b.rksl, ');
    sql.Add('   b.jldw, ');
    sql.Add('   RPrice=b.pfj, ');
    sql.Add('   RPAmt=b.pfj * b.rksl,');
    sql.Add('   SPrice=b.lsj, ');
    sql.Add('   SPAmt=b.lsj * b.rksl,');
    sql.Add('   diffAmt=(b.lsj-b.pfj) * b.rksl,');
    sql.Add('   b.ypph,');
    sql.Add('   b.sxrq,');
    sql.Add('   b.rkrq,   ');
    sql.Add('   d.inc_name,');
    sql.Add('   a.ybbm_country,');
    sql.Add('   a.ybmc_country ');
    sql.Add('FROM   xyzb a     ');
    sql.Add('       INNER JOIN xykr b');
    sql.Add('               ON a.ypbh = b.ypbh');
    sql.Add('       LEFT JOIN ghdw d           ');
    sql.Add('              ON d.inc_code = b.ghdw');
    sql.Add('WHERE      Datediff(day, rkrq,:datefrom) <= 0');
    sql.Add('       and Datediff(day, rkrq,:dateto)   >= 0');
    if yfbm<>0 then
    begin
      sql.Add(' and b.yfbm=:yfbm');
      parambyname('yfbm').AsInteger:=yfbm;
    end;
    if rklb<>0 then
    begin
      sql.Add(' and b.rklb=:rklb');
      parambyname('rklb').AsInteger:=rklb;
    end;
    if ghdwcode<>0 then
    begin
      sql.Add(' and b.ghdw=:ghdw');
      parambyname('ghdw').AsInteger:=ghdwcode;
    end;

    if trim(SearchCondition)<>'' then
    begin
      case SearchConditionClass of
      0:begin
         sql.add('and b.ypbh=:ypbh');
         parambyname('ypbh').asstring:=trim(SearchCondition);
      end;
      1:begin
        sql.add('and b.rkdh=:rkdh');
         parambyname('rkdh').asstring:=trim(SearchCondition);
      end;
      end;
    end;
    sql.add('order by b.rkrq');
    ParamByName('datefrom').asdate:=datefrom;
    ParamByName('dateto').asdate:=dateto;
    open;
    if isempty then exit;
  end;
   result:=true;
end;

function TMedStore.PrintInStore(MYTfrxReport: TfrxReport;aQuery: tuniquery;rkrq:string;lsh:integer): boolean;
begin
    result:=false;
    {with aQuery1 do
    begin
      close;
      sql.clear;
      sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
      sql.add('from xykr_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and convert(varchar(10),rkdate,120)=:rkrq');
      parambyname('rkrq').AsString :=rkrq;
      parambyname('lsh').asinteger:=Lsh;
      open;
    end; }

    with aQuery do
    begin
      close;
      sql.clear;
      sql.add('select a.lsh,a.ypbh,b.ym,b.gg,a.jldw,a.rksl,a.jhj,a.lsj,');
      sql.add('RPAmt=a.rksl*a.jhj,SPAmt=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
      sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name,a.produce,a.ypph,a.sxrq,');
      sql.add('opidName=(select xm from zgzb b where a.opid=b.bh)');
      sql.add('from xykr a,xyzb b,ghdw c');
      sql.add('where c.inc_code=a.ghdw and a.ypbh=b.ypbh ');
      sql.add('and a.lsh=:lsh and convert(varchar(10),rkrq,120)=:rkrq ');
      parambyname('rkrq').AsString:=rkrq;
      parambyname('lsh').asinteger:=Lsh;
      open;
      if isempty  then
      begin
        application.MessageBox('���������ϻ��Ǳ�������,��������������!','��ʾ',0);
        exit;
      end else
      begin
        MYTfrxReport.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\��ⵥ.fr3');
        MYTfrxReport.ShowReport;
      end;
    end;
  result:=true;
end;


function TMedStore.SearchOtherOutStoreDetail(aQuery: tuniquery;
  qldh: integer): boolean;
begin
   Result:=False;
   with aQuery do
   begin
     Close;
     sql.Clear;
     sql.Add('SELECT a.qldh, ');
     sql.Add('       a.ypbh, ');
     sql.Add('       b.ym,    ');
     sql.Add('       b.gg,     ');
     sql.Add('       b.produce, ');
     sql.Add('       a.sfl,     ');
     sql.Add('       b.zxdw,    ');
     sql.Add('       RPrice=a.pfj,');
     sql.Add('       RPAmt=a.pfj * a.sfl,');
     sql.Add('       SPrice=sfdj,       ');
     sql.Add('       SPAmt=a.sfdj * a.sfl, ');
     sql.Add('       diffAmt=a.sfdj * a.sfl - a.pfj * a.sfl');
     sql.Add('FROM   depqldb a,');
     sql.Add('       xyzb b     ');
     sql.Add('WHERE  a.ypbh = b.ypbh ');
     sql.Add('and qldh=:qldh');
     ParamByName('qldh').AsInteger:=qldh;
     Open;
     if IsEmpty then exit;
   end;
   Result:=true;
end;

function TMedStore.SearchOtherOutStoreDetail(aQuery: tuniquery; datefrom,
  dateto: Tdatetime; Reqdeptid: integer;ifzf:boolean): boolean;
begin
  Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT a.qldh,               ');
    SQL.Add('       supplydept=c.ksmc,    ');
    SQL.Add('       reqdept=d.ksmc,        ');
    SQL.Add('       e.ypbh,    ');
    SQL.Add('       e.ym,     ');
    SQL.Add('       e.gg,    ');
    SQL.Add('       e.produce,');
    SQL.Add('       b.sfl,');
    SQL.Add('       e.zxdw,');
    SQL.Add('       RPrice=b.pfj,');
    SQL.Add('       SPrice=b.sfdj,');
    SQL.Add('       RPAmt=(b.sfl * b.pfj),');
    SQL.Add('       SPAmt=(b.sfl * b.sfdj),');
    SQL.Add('	    DiffAmt=(b.sfl * b.sfdj)-(b.sfl * b.pfj),');
    SQL.Add('	    a.fyr,');
    SQL.Add('       a.fyrq, ');
    SQL.Add('       a.abstract');
    SQL.Add('FROM   depqlyf a,');
    SQL.Add('       depqldb b,');
    SQL.Add('       jgxx c,   ');
    SQL.Add('       jgxx d,     ');
    SQL.Add('       xyzb e     ');
    SQL.Add('WHERE  a.qldh = b.qldh');
    SQL.Add('       AND a.supplyksbm = c.ksbm');
    SQL.Add('       AND a.yfbm = d.ksbm       ');
    SQL.Add('       AND b.ypbh = e.ypbh       ');
    SQL.Add('       AND Datediff(day, qlrq, :datefrom) <= 0');
    SQL.Add('       AND Datediff(day, qlrq, :dateto) >= 0');
    SQL.Add('       AND ifzf=:ifzf ');
    if Reqdeptid<>0 then
    SQL.Add('   AND a.yfbm = :Reqdeptid');
    ParamByName('datefrom').AsDateTime:=datefrom;
    ParamByName('dateto').AsDateTime:=dateto;
    ParamByName('ifzf').asboolean:=ifzf;
    if Reqdeptid<>0 then
    ParamByName('Reqdeptid').AsInteger:=Reqdeptid;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

function TMedStore.SearchOtherOutStoreMaster(aQuery: tuniquery; datefrom,
  dateto: Tdatetime; Reqdeptid:integer;ifzf:boolean): boolean;
begin
  Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT a.qldh,               ');
    SQL.Add('       supplydept=c.ksmc,    ');
    SQL.Add('       reqdept=d.ksmc,        ');
    SQL.Add('       RPAmt=Sum(b.sfl * b.pfj),');
    SQL.Add('       SPAmt=Sum(b.sfl * b.sfdj),');
    SQL.Add('	    DiffAmt=Sum(b.sfl * b.sfdj)-Sum(b.sfl * b.pfj),');
    SQL.Add('	    a.fyr,');
    SQL.Add('       a.fyrq, ');
    SQL.Add('       a.abstract');
    SQL.Add('FROM   depqlyf a,');
    SQL.Add('       depqldb b,');
    SQL.Add('       jgxx c,   ');
    SQL.Add('       jgxx d     ');
    SQL.Add('WHERE  a.qldh = b.qldh');
    SQL.Add('       AND a.supplyksbm = c.ksbm');
    SQL.Add('       AND a.yfbm = d.ksbm       ');
    SQL.Add('       AND Datediff(day, qlrq, :datefrom) <= 0');
    SQL.Add('       AND Datediff(day, qlrq, :dateto) >= 0');
    SQL.Add('       AND ifzf=:ifzf                            ');
    if Reqdeptid<>0 then
    SQL.Add('   AND a.yfbm = :Reqdeptid');

    SQL.Add('GROUP  BY a.qldh, a.fyr,a.fyrq,c.ksmc,d.ksmc,a.abstract     ');

    ParamByName('datefrom').AsDateTime:=datefrom;
    ParamByName('dateto').AsDateTime:=dateto;
    ParamByName('ifzf').asboolean:=ifzf;
    if Reqdeptid<>0 then
    ParamByName('Reqdeptid').AsInteger:=Reqdeptid;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

function TMedStore.PrintOtherOutStore(MYTfrxReport: TfrxReport;
  aQuery: tuniquery; qldh: integer): boolean;
begin
  with aQuery do
  begin
      close;
      sql.Clear;
      sql.Add('select a.qldh,b.ypbh,b.sfl,type=b.zlbm,ckh=0,lsj=round(b.sfdj,2),d.ksmc,supplyksmc=e.ksmc,a.fyr,c.ym,c.gg,jldw=c.zxdw,qlrq=null,fyrq,je=round(b.sfdj,2)*b.sfl,pfj=round(b.pfj,2),pfjqe=round(b.pfj,2)*b.sfl,c.produce,YPPH=c.ph,a.abstract,sxrq='''' ');
      sql.Add('from depqlyf a,depqldb b,xyzb c,jgxx d,jgxx e');
      sql.Add('where a.qldh=b.qldh and a.yfbm=d.ksbm and a.supplyksbm=e.ksbm and  b.ypbh=c.ypbh and a.qldh=:qldh');
      sql.add('ORDER BY b.ypbh');
      ParamByName('qldh').AsInteger:=qldh;
      open;
  end;
  try
    MYTfrxReport.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\���쵥.fr3');
    MYTfrxReport.ShowReport;
  except
    application.MessageBox('����ȱ�����������','��ʹ',mb_ok);
    exit;
  end;
end;

function TMedStore.PrintOutStore(MYTfrxReport: TfrxReport; aQuery: tuniquery;
  ckrq:tdatetime;ckh: integer): boolean;
begin
  result:=false;
  with aQuery do
  begin
    sql.Add('select a.qldh,b.ypbh,sfl=a.cksl,type=a.lb,a.ckh,a.lsj,c.ksmc,supplyksmc='''',fyr=e.xm,d.ym,d.gg,d.jldw,qlrq=null,fyrq=a.ckrq,je=a.lsj*a.cksl,f.produce,f.ypph,f.sxrq,a.pfj,pfjqe=a.pfj*a.cksl,abstract='''' ');
    sql.Add('from xykchu a,xykcun b,jgxx c,xyzb d,zgzb e,xykr f');
    sql.Add('where a.rkxh=b.rkxh');
    sql.Add('and a.ksbm=c.ksbm ');
    sql.Add('and b.ypbh=d.ypbh');
    sql.Add('and a.ckr=e.bh');
    sql.Add('and a.rkxh=f.rkxh');
    sql.Add('and datediff(day,ckrq,:ckrq)=0 ');
    sql.Add('and a.ckh=:ckh ');
    sql.add('ORDER BY b.ypbh');
    ParamByName('ckrq').AsDateTime:=ckrq;
    ParamByName('ckh').AsInteger:=ckh;
    open;
    if not isempty then
    begin
      MYTfrxReport.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\���쵥.fr3');
      MYTfrxReport.ShowReport;
    end else
     exit;
   end;
  result:=true;
end;

function TMedStore.PrintRipInfo(MYTfrxReport: TfrxReport; aQuery,
  MyQuery1, MyQuery2, MyQuery3,MyQuery4,MyQuery5: tuniquery; mzh, cfdh, MedClass,no: integer): boolean;
var  aysbm:string;
begin
  if SearchRipTitle(aQuery,mzh,no) then   ;    //������ͷ
  begin
   aysbm:=aQuery.fieldbyname('ysbm').AsString;
   SaveRipSign(MyQuery5,aysbm, 'RipSign.bmp');//����ǩ��
  end;
  case MedClass of
  WesternMed:
    begin
       //������ϸ
       SearchRipDetail(MyQuery1,WesternRIP,cfdh);
       SearchRipDetail(MyQuery2,WesternHocusRip,cfdh);
       SearchRipDetail(MyQuery3,WesternTreatRip,cfdh);
       //2024.05.13���ϴ���
       SearchRipDetail(MyQuery4,MaterialRIP,cfdh);
       MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
       if MyQuery4.IsEmpty then
        MYTfrxReport.Pages[4].Visible:=false
       else
        MYTfrxReport.Pages[4].Visible:=true;
       if MyQuery3.IsEmpty then
        MYTfrxReport.Pages[3].Visible:=false
       else
        MYTfrxReport.Pages[3].Visible:=true;
      if MyQuery2.IsEmpty then
        MYTfrxReport.Pages[2].Visible:=false
      else
        MYTfrxReport.Pages[2].Visible:=true;
      if MyQuery1.IsEmpty then
        MYTfrxReport.Pages[1].Visible:=false
      else
        MYTfrxReport.Pages[1].Visible:=true;
    end;

  ChineseMed:
    begin
      if SearchRipDetail(MyQuery1,ChineseMedRip,cfdh) then
      MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
    end;
  end;
  MYTfrxReport.PrepareReport;
  MYTfrxReport.PrintOptions.ShowDialog:=false;
  case dm.Sysinfo.OutPatRipPrint of
  1:MYTfrxReport.Print;
  2:MYTfrxReport.ShowReport();
  end;

end;

function TMedStore.PrintRipInfoPreview(MYTfrxReport: TfrxReport; aQuery,
  MyQuery1, MyQuery2, MyQuery3, MyQuery4,MyQuery5: tuniquery; mzh, cfdh, MedClass,
  no: integer): boolean;
var  aysbm:string;
begin
 if SearchRipTitle(aQuery,mzh,no) then   ;    //������ͷ
  begin
   aysbm:=aQuery.fieldbyname('ysbm').AsString;
   SaveRipSign(MyQuery5,aysbm, 'RipSign.bmp');//����ǩ��
  end;
  case MedClass of
  WesternMed:
    begin
      //������ϸ
      SearchRipDetail(MyQuery1,WesternRIP,cfdh);
      SearchRipDetail(MyQuery2,WesternHocusRip,cfdh);
      SearchRipDetail(MyQuery3,WesternTreatRip,cfdh);
      //2024.05.13���ϴ���
      SearchRipDetail(MyQuery4,MaterialRIP,cfdh);

      MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
      if MyQuery4.IsEmpty then
        MYTfrxReport.Pages[4].Visible:=false
       else
        MYTfrxReport.Pages[4].Visible:=true;
      if MyQuery3.IsEmpty then
        MYTfrxReport.Pages[3].Visible:=false
       else
        MYTfrxReport.Pages[3].Visible:=true;
      if MyQuery2.IsEmpty then
        MYTfrxReport.Pages[2].Visible:=false
      else
        MYTfrxReport.Pages[2].Visible:=true;
      if MyQuery1.IsEmpty then
        MYTfrxReport.Pages[1].Visible:=false
      else
        MYTfrxReport.Pages[1].Visible:=true;
    end;
  ChineseMed:
    begin
      if SearchRipDetail(MyQuery1,ChineseMedRip,cfdh) then
      MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
    end;
  end;
  MYTfrxReport.PrepareReport;
  MYTfrxReport.PrintOptions.ShowDialog:=false;
  MYTfrxReport.ShowReport();
end;

function TMedStore.PrintRipInfoReturnPreview(MYTfrxReport: TfrxReport; aQuery,
  MyQuery1, MyQuery2, MyQuery3, MyQuery4,MyQuery5: tuniquery;mzh,cfdh,MedClass,no:integer): boolean;
  var  aysbm:string;
begin
 if SearchRipTitle(aQuery,mzh,no) then   ;    //������ͷ
 begin
   aysbm:=aQuery.fieldbyname('ysbm').AsString;
   SaveRipSign(MyQuery2,aysbm, 'RipSign.bmp');//����ǩ��
  end;
  case MedClass of
  WesternMed:
    begin
      //������ϸ
      SearchRipDetail(MyQuery1,WesternRIPReturn,cfdh);
      MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
      if MyQuery4.IsEmpty then
        MYTfrxReport.Pages[4].Visible:=false
       else
        MYTfrxReport.Pages[4].Visible:=true;
      if MyQuery3.IsEmpty then
        MYTfrxReport.Pages[3].Visible:=false
       else
        MYTfrxReport.Pages[3].Visible:=true;
      if MyQuery2.IsEmpty then
        MYTfrxReport.Pages[2].Visible:=false
      else
        MYTfrxReport.Pages[2].Visible:=true;
      if MyQuery1.IsEmpty then
        MYTfrxReport.Pages[1].Visible:=false
      else
        MYTfrxReport.Pages[1].Visible:=true;
    end;
  ChineseMed:
    begin
      if SearchRipDetail(MyQuery1,ChineseMedRipReturn,cfdh) then
      MYTfrxReport.LoadFromFile(FReportTemplatePath + '��ҩ����.fr3');
    end;
  end;
  MYTfrxReport.PrepareReport;
  MYTfrxReport.PrintOptions.ShowDialog:=false;
  MYTfrxReport.ShowReport();
end;

function TMedStore.SearchMedStoreSaleDept(aQuery: tuniquery; yfbm,
    PatientClass,DTClass:integer; datefrom, dateto: Tdatetime): boolean;
var  aSql:string;
begin
   result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      CASE PatientClass OF
      ALLPatient:
       begin
        SQL.Add('SELECT a.ksbm,b.ksmc,a.checklb,c.lbmc,a.qe');
        SQL.Add('into #tmp');
        SQL.Add('FROM   (SELECT a.ksbm,b.checklb,qe=Sum(b.qe) ');
        SQL.Add('FROM   MZcfdb a,mzcfyb b, depcheck c,xyzb d');
        SQL.Add('WHERE  a.no = c.no            ');
        SQL.Add('       AND a.cfdh = b.cfdh      ');
        SQL.Add('       AND a.MZH = c.mzh       ');
        SQL.Add('       AND b.ypbh = d.ypbh');
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0 ');
        2:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(day,c.rjdate,:dateto)>=0');
        end;
        if yfbm<>0 then sql.add('and a.yfbm=:yfbm');

        SQL.Add('GROUP  BY a.ksbm,b.checklb ');
        SQL.Add('UNION ALL');
        SQL.Add('SELECT a.ksbm,b.checklb,qe=Sum(b.qe)');
        SQL.Add('FROM   cfdb a,cfyb b,zy_byinfo c,xyzb d                              ');
        SQL.Add('WHERE  a.cfdh = b.cfdh                                               ');
        SQL.Add('       AND a.zyh = c.zyh                                             ');
        SQL.Add('       AND b.ypbh = d.ypbh                                           ');
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0 ');
        2:SQL.Add('and datediff(day,c.rysj+a.no,:datefrom)<=0 and datediff(day,c.rysj+a.no,:dateto)>=0');
        end;
        if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
        SQL.Add('GROUP  BY a.ksbm,b.checklb) a,jgxx b,cwsf_fplb c');
        SQL.Add('where a.ksbm = b.ksbm   AND a.checklb = c.fplb ');
       end;
      OutPatient:
        begin

          SQL.Add('SELECT a.ksbm,e.ksmc,b.checklb,f.lbmc,qe=Sum(b.qe)');
          SQL.Add('into #tmp');
          SQL.Add('from MZcfdb a,mzcfyb b,depcheck c,xyzb d,jgxx e, cwsf_fplb f ');
          SQL.Add('where  a.no=c.no  ');
          SQL.Add('and a.cfdh=b.cfdh ');
          SQL.Add('and a.MZH=c.mzh   ');
          SQL.Add('and b.ypbh=d.ypbh ');
          SQL.Add('and a.ksbm=e.ksbm ');
          SQL.Add('and b.checklb=f.fplb ');
          case DTClass of
          0:SQL.Add('and datediff(mi,a.fyrq,:datefrom)<=0 and datediff(mi,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(mi,a.cfrq,:datefrom)<=0 and datediff(mi,a.cfrq,:dateto)>=0 and fyrq is null');
          2:SQL.Add('and datediff(mi,c.rjdate,:datefrom)<=0 and datediff(mi,c.rjdate,:dateto)>=0');
          end;
          if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
          SQL.Add('group by a.ksbm,e.ksmc,b.checklb,f.lbmc ');

        end;
      InPatient:
        begin
          SQL.Add('SELECT a.ksbm,e.ksmc,b.checklb,f.lbmc,qe=Sum(b.qe)');
          SQL.Add('into #tmp');
          SQL.Add('from cfdb a,cfyb b,zy_byinfo c,xyzb d,jgxx e, cwsf_fplb f  ');
          SQL.Add('where a.cfdh=b.cfdh  ');
          SQL.Add('and  a.zyh=c.zyh  ');
          SQL.Add('and  b.ypbh=d.ypbh  ');
          SQL.Add('and a.ksbm=e.ksbm ');
          SQL.Add('and b.checklb=f.fplb ');
          case DTClass of
          0:SQL.Add('and datediff(mi,a.fyrq,:datefrom)<=0 and datediff(mi,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(mi,a.cfrq,:datefrom)<=0 and datediff(mi,a.cfrq,:dateto)>=0 and a.fyrq is null');
          2:SQL.Add('and datediff(mi,c.rjdate,:datefrom)<=0 and datediff(mi,c.rjdate,:dateto)>=0');
          end;
          if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
          SQL.Add('group by a.ksbm,e.ksmc,b.checklb,f.lbmc');
        end;
      end;
      SQL.Add('SELECT a.*         ');
      SQL.Add('FROM   (SELECT ksbm, ');
      SQL.Add('         ksmc,       ');
      SQL.Add('         Isnull([��ҩ��], 0)  AS ''��ҩ��'',');
      SQL.Add('         Isnull([�в�ҩ��], 0) AS ''�в�ҩ��'',');
      SQL.Add('         Isnull([�г�ҩ��], 0) AS ''�г�ҩ��'', ');
      SQL.Add('         Isnull([���ķ�], 0)  AS ''���ķ�'',   ');
      SQL.Add('         Isnull(isnull([��ҩ��],0)+isnull([�в�ҩ��],0)+isnull([�г�ҩ��],0)+isnull([���ķ�],0), 0)  AS ''�ϼ�''');
      SQL.Add('FROM   (SELECT ksbm,ksmc,lbmc,qe FROM   #tmp) AS c ');
      SQL.Add('          PIVOT( Sum(qe)                             ');
      SQL.Add('          FOR lbmc IN ([��ҩ��],[�в�ҩ��],[�г�ҩ��],[���ķ�])) t) AS a ');
      ParamByName('datefrom').AsDatetime:=datefrom;
      ParamByName('dateto').AsDatetime:=dateto;
      if yfbm<>0 then ParamByName('yfbm').AsInteger :=yfbm;
      Open;

      if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchMedStoreSaleDetail(aQuery: tuniquery;
  yfbm: integer; PatientClass, MedClass, DTClass,
  SearchConditionClass: byte; SearchCondition: string; datefrom,
  dateto: Tdatetime): boolean;
begin
    result:=false;
    with aQuery do
    begin
      close;
      sql.Clear;
      case PatientClass of
      OutPatient:
      begin
        sql.Add('SELECT   a.mzh,');
        sql.Add('         a.Name,');
        sql.Add('         a.ksmc,');
        sql.Add('         e.xm,');
        sql.Add('         b.NO,');
        sql.Add('         g.lbmc,');
        sql.Add('         f.ym,');
        sql.Add('         c.cfdh,');
        sql.Add('         c.cfrq,');
        sql.Add('         d.zsl,');
        sql.Add('         f.zxdw,');
        sql.Add('         d.qe,');
        sql.Add('         zf=CASE ');
        sql.Add('              WHEN b.no_zf IS NOT NULL THEN ''����''');
        sql.Add('              ELSE '''' ');
        sql.Add('            END,');
        sql.Add('         d.ypbh, ');
        sql.Add('         c.fyrq,');
        sql.Add('         b.rjdate,');
        sql.Add('         f.produce,');
        sql.Add('         d.usage,');
        sql.Add('         d.yplb,');
        sql.Add('         f.gg,');
        sql.Add('         f.zlm,');
        sql.Add('         f.groupbuy,');
        sql.Add('         d.ts,');
        sql.Add('         fyr=c.fyr_name');
        sql.Add('    FROM   DepPatientInfo a,');
        sql.Add('           DepCheck b,');
        sql.Add('           MZcfdb c,');
        sql.Add('           mzcfyb d,');
        sql.Add('           zgzb e,');
        sql.Add('           xyzb f,');
        sql.Add('           cwsf_fplb g');
        sql.Add('     WHERE  a.mzh = b.mzh');
        sql.Add('         AND b.no = c.no ');
        sql.Add('         AND c.cfdh = d.cfdh');
        sql.Add('         AND a.ysbm = e.bh ');
        sql.Add('         AND d.ypbh = f.ypbh ');
        sql.Add('         AND d.yplb = g.fplb');
        case MedClass of
        0:sql.add(' ');
        1:sql.add('and f.lb=1');
        2:sql.add('and f.lb=2');
        3:sql.add('and f.lb=3');
        end;
        //��ȷ������
        case DTClass of
        0:SQL.Add('and datediff(mi,c.fyrq,:datefrom)<=0   and datediff(mi,c.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(mi,b.rjdate,:datefrom)<=0 and datediff(mi,b.rjdate,:dateto)>=0');
        2:SQL.Add('and datediff(mi,c.cfrq,:datefrom)<=0   and datediff(mi,c.cfrq,:dateto)>=0');
        end;
        //SQL.Add('and c.qe<>0 ');
        if yfbm<>0 then SQL.Add('and c.yfbm=:yfbm');
        if Trim(SearchCondition)<>'' then
        begin
          case SearchConditionClass of
          0:SQL.Add('and f.ypbh like :SearchCondition ');
          1:SQL.Add('and f.pym like :SearchCondition ');
          2:SQL.Add('and a.name like :SearchCondition ');
          end;
          ParamByName('SearchCondition').Asstring := Trim(SearchCondition)+'%';
        end;
        sql.add('order by c.cfrq ');
      end;
      InPatient:
      begin
        sql.Add('SELECT e.zyh,');
        sql.Add(' e.byxm, ');
        sql.Add(' f.ksmc,  ');
        sql.Add(' d.xm,    ');
        sql.Add(' c.ym,    ');
        sql.Add(' c.gg,    ');
        sql.Add(' b.mryl,  ');
        sql.Add(' c.zxdw,  ');
        sql.Add(' YLSJ=Round(b.qe / b.mryl, 4),');
        sql.Add(' b.qe,    ');
        sql.Add(' c.produce,    ');
        sql.Add(' c.lbm,    ');
        sql.Add(' c.zlm,    ');
        sql.Add(' c.groupbuy,');
        sql.Add(' a.groupid,');
        sql.Add(' a.team,   ');
        sql.Add(' a.bycfpart,');
        sql.Add(' b.ypbh,                           ');
        sql.Add(' a.cfys,                           ');
        sql.Add(' admindoctor=a.tybiaosi,           ');
        sql.Add(' a.cfrq,  ');
        sql.Add(' a.fyrq,  ');
        sql.Add(' fyr=g.xm,  ');
        sql.Add(' CASE       ');
        sql.Add('   WHEN a.no IS NULL');
        sql.Add('         OR a.no = 9999 THEN NULL');
        sql.Add('   ELSE Dateadd(day, a.no, e.rysj) ');
        sql.Add(' END AS rjdate                    ');
        sql.Add('FROM                               ');
        sql.Add(' cfdb a(nolock),                   ');
        sql.Add(' cfyb b(nolock),                   ');
        sql.Add(' xyzb c(nolock),                   ');
        sql.Add(' zgzb d(nolock),                   ');
        sql.Add(' zy_byinfo e,                      ');
        sql.Add(' jgxx f(nolock),                   ');
        sql.Add(' zgzb g(nolock)                    ');
        sql.Add('WHERE  a.cfdh = b.cfdh             ');
        sql.Add(' AND b.ypbh = c.ypbh               ');
        sql.Add(' AND a.cfys = d.bh                 ');
        sql.Add(' AND a.zyh  = e.zyh                ');
        sql.Add(' AND a.ksbm = f.ksbm                ');
        sql.Add(' AND a.ksbm <> 317                 ');
        sql.Add(' AND b.mryl <> 0                   ');
        sql.Add(' AND a.fyr=g.bh');
        case MedClass of
        0:sql.add(' ');
        1:sql.add('and c.lb=1');
        2:sql.add('and c.lb=2');
        3:sql.add('and c.lb=3');
        end;
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0      and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,e.rysj+a.no,:datefrom)<=0 and datediff(day,e.rysj+a.no,:dateto)>=0');
        2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0      and datediff(day,a.cfrq,:dateto)>=0');
        end;
        //SQL.Add('and a.qe<>0 ');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        if Trim(SearchCondition)<>'' then
        begin
          case SearchConditionClass of
          0:SQL.Add('and c.ypbh like :SearchCondition ');
          1:SQL.Add('and c.pym  like :SearchCondition ');
          2:SQL.Add('and e.byxm like :SearchCondition ');
          end;
          ParamByName('SearchCondition').Asstring := Trim(SearchCondition)+'%';
        end;
          sql.add('order by a.cfrq ');
        end;
      end;
      parambyname('datefrom').asdatetime :=datefrom;
      parambyname('dateto').asdatetime :=dateto;
      if yfbm<>0 then ParamByName('yfbm').AsInteger :=yfbm;
      open;
      if isempty then   exit;
    end;
    result:=true;
end;

function TMedStore.SearchMedStoreSaleDoctor(aQuery: tuniquery;
  yfbm,PatientClass, DTClass: integer; datefrom,
  dateto: Tdatetime): boolean;
begin
    result:=false;
    with aQuery do
    begin
      close;
      sql.Clear;
      case PatientClass of
      ALLPatient:
      begin
        sql.add('SELECT b.bh,');
        sql.add('       b.xm,');
        sql.add('       CASE a.yplb');
        sql.add('         WHEN 1 THEN ''��ҩ''');
        sql.add('         WHEN 2 THEN ''�в�ҩ''');
        sql.add('         WHEN 3 THEN ''��ҩ''');
        sql.add('         ELSE ''����''');
        sql.add('       END             AS cflb,');
        sql.add('       Count(RpCount1) AS RpCount,');
        sql.add('       Sum(RpAmt1)     RpAmt');
        sql.add('FROM   (SELECT a.cfys,');
        sql.add('               b.yplb,');
        sql.add('               Count(a.cfdh) AS RpCount1,');
        sql.add('               Sum(b.QE)     AS RpAmt1');
        sql.add('        FROM   MZcfdb a');
        sql.add('               JOIN MZcfyb b');
        sql.add('                 ON a.cfdh = b.cfdh');
        sql.add('               JOIN DepCheck c');
        sql.add('                 ON a.MZH = c.mzh');
        sql.add('                    AND a.no = c.[no]');
        sql.add('        WHERE  1=1');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        case DTClass of
          0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(day,c.rjdate,:dateto)>=0');
          2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0');
        end;
        sql.add('        GROUP  BY a.cfys,b.yplb,a.cfdh');
        sql.add('        UNION ALL');
        sql.add('        SELECT a.cfys,');
        sql.add('               b.yplb,');
        sql.add('               Count(a.cfdh) AS RpCount1,');
        sql.add('               Sum(b.QE)     AS RpAmt1');
        sql.add('        FROM   cfdb a');
        sql.add('               JOIN cfyb b');
        sql.add('                 ON a.cfdh = b.cfdh');
        sql.add('               JOIN zy_byinfo c');
        sql.add('                 ON a.zyh = c.zyh');
        sql.add('        WHERE  1=1');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0      and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,c.rysj+a.no,:datefrom)<=0 and datediff(day,c.rysj+a.no,:dateto)>=0');
        2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0      and datediff(day,a.cfrq,:dateto)>=0');
        end;
        sql.add('        GROUP  BY a.cfys,b.yplb,a.cfdh) a');
        sql.add('       JOIN zgzb b');
        sql.add('         ON a.cfys = b.bh');
        sql.add('GROUP  BY b.bh,b.xm,a.yplb');
        sql.add('ORDER  BY b.bh,a.yplb ');
      end;
      OutPatient:
      begin
        sql.add('SELECT b.bh,');
        sql.add('       b.xm,');
        sql.add('       CASE a.yplb');
        sql.add('         WHEN 1 THEN ''��ҩ''');
        sql.add('         WHEN 2 THEN ''�в�ҩ''');
        sql.add('         WHEN 3 THEN ''��ҩ''');
        sql.add('         ELSE ''����''');
        sql.add('       END             AS cflb,');
        sql.add('       Count(RpCount1) AS RpCount,');
        sql.add('       Sum(RpAmt1)     RpAmt');
        sql.add('FROM   (SELECT a.cfys,');
        sql.add('               b.yplb,');
        sql.add('               Count(a.cfdh) AS RpCount1,');
        sql.add('               Sum(b.QE)     AS RpAmt1');
        sql.add('        FROM   MZcfdb a');
        sql.add('               JOIN MZcfyb b');
        sql.add('                 ON a.cfdh = b.cfdh');
        sql.add('               JOIN DepCheck c');
        sql.add('                 ON a.MZH = c.mzh');
        sql.add('                    AND a.no = c.[no]');
        sql.add('        WHERE  1=1');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        case DTClass of
          0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(day,c.rjdate,:dateto)>=0');
          2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0');
        end;
        sql.add('        GROUP  BY a.cfys,b.yplb,a.cfdh) a');
        sql.add('       JOIN zgzb b');
        sql.add('         ON a.cfys = b.bh');
        sql.add('GROUP  BY b.bh,b.xm,a.yplb');
        sql.add('ORDER  BY b.bh,a.yplb ');
      end;
      InPatient:
      begin
        sql.add('SELECT b.bh,');
        sql.add('       b.xm,');
        sql.add('       CASE a.yplb');
        sql.add('         WHEN 1 THEN ''��ҩ''');
        sql.add('         WHEN 2 THEN ''�в�ҩ''');
        sql.add('         WHEN 3 THEN ''��ҩ''');
        sql.add('         ELSE ''����''');
        sql.add('       END             AS cflb,');
        sql.add('       Count(RpCount1) AS RpCount,');
        sql.add('       Sum(RpAmt1)     RpAmt');
        sql.add('FROM   (SELECT a.cfys,');
        sql.add('               b.yplb,');
        sql.add('               Count(a.cfdh) AS RpCount1,');
        sql.add('               Sum(b.QE)     AS RpAmt1');
        sql.add('        FROM   cfdb a');
        sql.add('               JOIN cfyb b');
        sql.add('                 ON a.cfdh = b.cfdh');
        sql.add('               JOIN zy_byinfo c');
        sql.add('                 ON a.zyh = c.zyh');
        sql.add('        WHERE  1=1 ');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0      and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,c.rysj+a.no,:datefrom)<=0 and datediff(day,c.rysj+a.no,:dateto)>=0');
        2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0      and datediff(day,a.cfrq,:dateto)>=0');
        end;
        sql.add('        GROUP  BY a.cfys,b.yplb,a.cfdh) a');
        sql.add('       JOIN zgzb b');
        sql.add('         ON a.cfys = b.bh');
        sql.add('GROUP  BY b.bh,b.xm,a.yplb');
        sql.add('ORDER  BY b.bh,a.yplb ');
      end;
      end;
        parambyname('datefrom').asdatetime :=datefrom;
        parambyname('dateto').asdatetime :=dateto;
        if yfbm<>0 then ParamByName('yfbm').AsInteger :=yfbm;
        open;
        if isempty then   exit;
    result:=true;
  end;
end;

function TMedStore.SearchMedStoreSaleTotal(aQuery: tuniquery; yfbm,PatientClass,
  MedClass, DTClass, TotalClass: integer; datefrom,
  dateto: Tdatetime): boolean;
begin
   result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      CASE PatientClass OF
      ALLPatient:
       begin
        SQL.Add('SELECT a.ypbh,ym,gg,produce,zxdw,zlm,groupbuy,sl=Sum(sl),qe=Sum(qe),b.kcl,ROW_NUMBER() OVER ( ORDER BY  Sum(qe) DESC ) as seqno,TotalClass=''''  ');
        SQL.Add('FROM   (SELECT d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy,sl=Sum(b.zsl),qe=Sum(b.qe)  ');
        SQL.Add('FROM   MZcfdb a,mzcfyb b,depcheck c,xyzb d                            ');
        SQL.Add('WHERE  a.no = c.no            ');
        SQL.Add('       AND a.cfdh = b.cfdh      ');
        SQL.Add('       AND a.MZH = c.mzh       ');
        SQL.Add('       AND b.ypbh = d.ypbh');
        case MedClass of
          0:sql.add(' ');
          1:sql.add('and d.lb=1');
          2:sql.add('and d.lb=2');
          3:sql.add('and d.lb=3');
        end;
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0 ');
        2:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(day,c.rjdate,:dateto)>=0');
        end;
        if yfbm<>0 then sql.add('and a.yfbm=:yfbm');

        SQL.Add('GROUP  BY d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy       ');
        SQL.Add('HAVING Sum(b.zsl) <> 0                            ');
        SQL.Add('UNION ALL                                         ');
        SQL.Add('SELECT d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy,sl=Sum(b.mryl),qe=Sum(b.qe)');
        SQL.Add('FROM   cfdb a,cfyb b,zy_byinfo c,xyzb d                              ');
        SQL.Add('WHERE  a.cfdh = b.cfdh                                               ');
        SQL.Add('       AND a.zyh = c.zyh                                             ');
        SQL.Add('       AND b.ypbh = d.ypbh                                           ');
        case MedClass of
          0:sql.add(' ');
          1:sql.add('and d.lb=1');
          2:sql.add('and d.lb=2');
          3:sql.add('and d.lb=3');
        end;
        case DTClass of
        0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
        1:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0 ');
        2:SQL.Add('and datediff(day,c.rysj+a.no,:datefrom)<=0 and datediff(day,c.rysj+a.no,:dateto)>=0');
        end;
        if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
        SQL.Add('GROUP  BY d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy');
        SQL.Add('HAVING Sum(b.mryl) <> 0) a left join nkyc b on a.ypbh=b.ypbh ');
        SQL.Add('GROUP  BY a.ypbh,ym,gg,produce,zxdw,b.kcl,zlm,groupbuy');
        SQL.Add('ORDER  BY Sum(qe) DESC                                              ');
       end;
      OutPatient:
        begin
          case TotalClass of
          0:SQL.Add('select d.ypbh,d.ym,d.gg,d.produce,d.zxdw,sl=sum(b.zsl),qe=sum(b.qe),d.zlm,d.groupbuy,TotalClass=''�ѷ�ҩ'' ');
          1:SQL.Add('select d.ypbh,d.ym,d.gg,d.produce,d.zxdw,sl=sum(b.zsl),qe=sum(b.qe),d.zlm,d.groupbuy,TotalClass=''δ��ҩ'' ');
          end;
          SQL.Add('from MZcfdb a,mzcfyb b,depcheck c,xyzb d ');
          SQL.Add('where  a.no=c.no  ');
          SQL.Add('and a.cfdh=b.cfdh ');
          SQL.Add('and a.MZH=c.mzh   ');
          SQL.Add('and b.ypbh=d.ypbh ');

          case MedClass of
          0:sql.add(' ');
          1:sql.add('and d.lb=1');
          2:sql.add('and d.lb=2');
          3:sql.add('and d.lb=3');
          end;
          case DTClass of
          0:SQL.Add('and datediff(mi,a.fyrq,:datefrom)<=0 and datediff(mi,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(mi,a.cfrq,:datefrom)<=0 and datediff(mi,a.cfrq,:dateto)>=0 and fyrq is null');
          2:SQL.Add('and datediff(mi,c.rjdate,:datefrom)<=0 and datediff(mi,c.rjdate,:dateto)>=0');
          end;
          if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
          SQL.Add('group by  d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy ');
          SQL.Add('having sum(b.usenum)<>0 ');
        end;
      InPatient:
        begin
          case TotalClass of
          0:SQL.Add('select d.ypbh,d.ym,d.gg,d.produce,d.zxdw,sl=sum(b.mryl),qe=sum(b.qe),d.zlm,d.groupbuy,TotalClass=''�ѷ�ҩ'' ');
          1:SQL.Add('select d.ypbh,d.ym,d.gg,d.produce,d.zxdw,sl=sum(b.mryl),qe=sum(b.qe),d.zlm,d.groupbuy,TotalClass=''δ��ҩ'' ');
          end;
          SQL.Add('from cfdb a,cfyb b,zy_byinfo c,xyzb d ');
          SQL.Add('where a.cfdh=b.cfdh  ');
          SQL.Add('and  a.zyh=c.zyh  ');
          SQL.Add('and  b.ypbh=d.ypbh  ');

          case MedClass of
          0:sql.add(' ');
          1:sql.add('and d.lb=1');
          2:sql.add('and d.lb=2');
          3:sql.add('and d.lb=3');
          end;

          case DTClass of
          0:SQL.Add('and datediff(mi,a.fyrq,:datefrom)<=0 and datediff(mi,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(mi,a.cfrq,:datefrom)<=0 and datediff(mi,a.cfrq,:dateto)>=0 and a.fyrq is null');
          2:SQL.Add('and datediff(mi,c.rjdate,:datefrom)<=0 and datediff(mi,c.rjdate,:dateto)>=0');
          end;
          if yfbm<>0 then sql.add('and a.yfbm=:yfbm');
          SQL.Add('group by  d.ypbh,d.ym,d.gg,d.produce,d.zxdw,d.zlm,d.groupbuy ');
          SQL.Add('having sum(b.mryl)<>0 ');
        end;
      end;
      ParamByName('datefrom').AsDatetime:=datefrom;
      ParamByName('dateto').AsDatetime:=dateto;
      if yfbm<>0 then ParamByName('yfbm').AsInteger :=yfbm;
      Open;
      if isempty then exit;
  end;
  result:=true;
end;



function TMedStore.SearchNurseUnit(aQuery: tuniquery): boolean;
begin
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add('select CODE=roomid,NAME=room,memo From zy_sickroom where LEN(roomid)=4');
    sql.add('order by roomid');
    open;
  end;
end;

function TMedStore.SaveRipSign(aQuery: tuniquery; UserID,
  PicName: string): boolean;
begin

end;

function TMedStore.SearchBalanceDetail(aQuery: tuniquery; datefrom,
  dateto: Tdatetime; yfbm: integer; ypbh: string): boolean;
begin
   Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('exec Medstore_SearchBalanceDetail :datefrom,:dateto,:yfbm,:ypbh');
    ParamByName('datefrom').AsDateTime:=datefrom;
    ParamByName('dateto').AsDateTime:=dateto;
    ParamByName('yfbm').asinteger:=yfbm;
    ParamByName('ypbh').asstring:=ypbh;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

function TMedStore.SearchBalanceMaster(aQuery: tuniquery; datefrom,
  dateto: Tdatetime; yfbm: integer; ypbh: string;
  MedClass: integer): boolean;
begin
  Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('exec MedStore_SearchBalanceMasterCalc :datefrom,:dateto,:yfbm,:ypbh,:lb');
    ParamByName('datefrom').AsDateTime:=datefrom;
    ParamByName('dateto').AsDateTime:=dateto;
    ParamByName('yfbm').asinteger:=yfbm;
    ParamByName('ypbh').asstring:=ypbh;
    ParamByName('lb').asinteger:=MedClass;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

procedure TMedStore.GetYfbm(aQuery:tuniquery;Mycbb:TComboBox;IFAll:boolean);
begin
   with aQuery do
   begin
     close;
     sql.clear;
     sql.add('select ksbm,ksmc from jgxx where Ifzy=1 and lbd=5 and ksbm not in (500) ');
     open;
     first;
     Mycbb.Items.Clear;
     if IFAll then Mycbb.Items.Add('0:ȫ��');
     while not eof do
     begin
       Mycbb.Items.Add(fields[0].asstring+':'+fields[1].asstring);
       next;
     end;
   end;
    Mycbb.ItemIndex:=0;
end;

function TMedStore.LockMedinfo(aQuery: tuniquery; roomid: string; ifxy, yzlb,
  opid, deptid, zyh: integer; sendtype:string;yfbm:integer): boolean;
var Amessage,Logmessage:string;
begin
 result:=false;
  with  aQuery do
  begin
    close;
    sql.Clear;
    sql.add('exec  MedStore_Lock  :roomid,:ifxy,:yzlb,:opid,:deptid,:zyh,:sendtype,:yfbm');
    parambyname('roomid').asstring:=trim(roomid);
    parambyname('ifxy').asinteger:=ifxy;
    parambyname('yzlb').asinteger:=yzlb;
    parambyname('opid').asinteger:=opid;
    parambyname('deptid').asinteger:=deptid;
    parambyname('zyh').asinteger:=zyh;
    parambyname('sendtype').asstring:=sendtype;
    parambyname('yfbm').AsInteger:=yfbm;
    try
      open;
      if isempty then
      begin
        Amessage:='û����Ҫ��ҩ��ҩƷ��';
        LogMessage:=LogMessage+'��¼��:0';
        messagedlg(pchar(Amessage), mtWarning,[mbok],0);
      end else
      begin
        result:=true;
      end;
    except
      on E: Exception do
        begin
         LogMessage:='��ҩ���:'+' '+
                     '��¼��:'+'   '+
                     '��������:'+sendtype+' '+
                     '¥���:'+roomid+' '+
                     'ҩƷ���:'+inttostr(ifxy)+' '+
                     'ҽ�����:'+inttostr(yzlb)+' '+
                     '�û�:'+inttostr(opid)+' '+
                     '����:'+inttostr(deptid)+' '+
                     'סԺ��:'+inttostr(zyh);
          application.MessageBox(pchar('����'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          //flog.AddLog('ʧ��', '00001','������¼',LogMessage,e.Message,flogtype);
          if pos('���ӳ�ʱ',e.Message)>0 then
          begin
              application.MessageBox(pchar('�������ӳ������ش�������˳�������������Ӧ�ó���'),'������Ϣ',mb_iconerror);
              application.Terminate;
          end;
          exit;
       end;
    end;
  end;
end;

function TMedStore.SearchStoreOccupyDetail(aQuery: tuniquery;
  yfbm: integer; Medcode: string): boolean;
begin
  Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT');
    SQL.Add('  a.SelectCheck, ');
    SQL.Add('  a.rowid, ');
    SQL.Add('  a.xh,    ');
    SQL.Add('  a.yzdh,  ');
    SQL.Add('  a.PatID, ');
    SQL.Add('  CASE a.PatClass');
    SQL.Add('  WHEN 1 THEN (SELECT name ');
    SQL.Add('                  FROM   DepPatientInfo');
    SQL.Add('                  WHERE  mzh = a.PatID) ');
    SQL.Add('  WHEN 2 THEN (SELECT byxm              ');
    SQL.Add('               FROM   zy_byinfo         ');
    SQL.Add('               WHERE  zyh = a.PatID)    ');
    SQL.Add('   END AS patname,                      ');
    SQL.Add('   d.ksmc,                              ');
    SQL.Add('   a.ypbh,                              ');
    SQL.Add('   c.ym,                                ');
    SQL.Add('   c.gg,                                ');
    SQL.Add('   c.produce,                           ');
    SQL.Add('   a.OccupyKcl,                         ');
    SQL.Add('   c.zxdw,                              ');
    SQL.Add('   a.createdt,                          ');
    SQL.Add('   a.CreateOpid,                        ');
    SQL.Add('   a.ClearDt,                           ');
    SQL.Add('   a.ClearOpid,                         ');
    SQL.Add('   f.zxtime,                            ');
    SQL.Add('   CASE Isnull(f.yzdh, 0)               ');
    SQL.Add('     WHEN 0 THEN ''ҽ��ɾ��''            ');
    SQL.Add('     ELSE                               ');
    SQL.Add('       CASE Isnull(f.zxtime, 0)         ');
    SQL.Add('         WHEN 0 THEN ''δ�շ�''         ');
    SQL.Add('         ELSE ''���շ�''                ');
    SQL.Add('      END                               ');
    SQL.Add('   END AS OccupyState                   ');
    SQL.Add('FROM   Medstore_OccupyLog a             ');
    SQL.Add('   JOIN xyzb c                          ');
    SQL.Add('     ON a.ypbh = c.ypbh                 ');
    SQL.Add('   JOIN jgxx d                          ');
    SQL.Add('     ON a.ksbm = d.ksbm                 ');
    SQL.Add('   left join mz_yz_db f                 ');
    SQL.Add('   on a.xh=f.XH                         ');
    SQL.Add('where a.yfbm=:yfbm');
    IF Medcode<>'' then
    begin
      SQL.Add('and a.ypbh=:ypbh');
      ParamByName('ypbh').asstring:=Medcode;
    end;
    ParamByName('yfbm').asinteger:=yfbm;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

function TMedStore.SearchStoreOccupyMaster(aQuery: tuniquery;
  yfbm: integer; spell: string): boolean;
begin
  Result:=False;
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT a.ypbh, b.ym, b.gg, b.produce,a.OccupyKcl,a.kcl,b.zxdw');
    SQL.Add('FROM  nkyc a');
    SQL.Add(' join xyzb b ');
    SQL.Add(' ON a.ypbh = b.ypbh');
    SQL.Add('where a.ksbm=:yfbm');
    SQL.Add('and  a.OccupyKcl<>0');
    IF spell<>'' then
    begin
      SQL.Add('and b.pym like :spell');
      ParamByName('spell').asstring:=spell+'%';
    end;
    ParamByName('yfbm').asinteger:=yfbm;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

function TMedStore.SendMedinfo(aQuery: tuniquery; opid, reccount, yzlb,
  cfclass: integer; roomid, sendtype, sendno, ipaddress: string;yfbm,ksbm,cflb:integer): boolean;
 var  Amessage,logmessage:string;
begin
  logmessage:='��ҩ���:'+sendno+' '+
              '��¼��:'+inttostr(reccount)+' '+
              '��ҩ����:'+sendtype+' '+
              '¥���:'+roomid+' '+
              'ҽ�����:'+inttostr(yzlb)+' '+
              '�������:'+inttostr(cfclass)+' '+
              '�û�:'+inttostr(opid)+'';
  result:=false;
  with  aQuery do
  begin
    close;
    sql.Clear;
    //sql.add('exec  MedStore_SendMed  :opid,:roomid,:reccount,:yzlb,:cfclass,:sendtype,:sendno,:ipaddress');
    sql.add('exec  MedStore_SendMed  :opid,:roomid,:reccount,:yzlb,:cfclass,:sendtype,:sendno,:ipaddress,:yfbm,:ksbm,:cflb');
    parambyname('opid').asinteger:=opid;
    parambyname('roomid').asstring:=roomid;
    parambyname('yzlb').asinteger:=yzlb;
    parambyname('reccount').asinteger:=reccount;
    parambyname('cfclass').asinteger:=cfclass;
    parambyname('sendtype').asstring:=sendtype;
    parambyname('sendno').asstring:=sendno;
    parambyname('ipaddress').asstring:=ipaddress;
    parambyname('yfbm').asinteger:=yfbm;
    parambyname('ksbm').asinteger:=ksbm;
    parambyname('cflb').asinteger:=cflb;
    try
      ExecSQL;
        Amessage:='��ҩ�ɹ���'+'��ҩ���:'+sendno+'('+inttostr(reccount)+')';
        Messagedlg(pchar(Amessage), mtInformation,[mbok],0);
        result:=true;
        //flog.AddLog('�ɹ�', '00003', '��ҩ',logmessage,'',flogtype);
     except
       on E: Exception do
        begin
          application.MessageBox(pchar('����'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
         // flog.AddLog('ʧ��', '00003', '��ҩ',logmessage,e.Message,flogtype);
          if pos('MedStore_CStore',e.Message)>0 then
          begin
            application.MessageBox(pchar('һ��������ѡ���˲�ͬ��Ƶ�Σ�����Ƶ�Σ�˫����������޸�Ƶ��'),'������Ϣ',mb_iconerror);
            exit;
          end;
          if pos('���ӳ�ʱ',e.Message)>0 then
          begin
              application.MessageBox(pchar('�������ӳ������ش�������˳�������������Ӧ�ó���'),'������Ϣ',mb_iconerror);
              application.Terminate;
          end;
          exit;
        end;
    end;
  end;
end;

function TMedStore.DeleteStoreOccupy(aQuery: tuniquery;
  rowid: integer): boolean;
begin
  with  aQuery  do
  begin
    close;
    sql.Clear;
    SQL.Add('update  nkyc set OccupyKcl=b.OccupyKcl-a.OccupyKcl');
    SQL.Add('from Medstore_OccupyLog a join nkyc b on a.ypbh=b.ypbh ');
    SQL.Add('where b.OccupyKcl<>0 ');
    SQL.Add('  and b.OccupyKcl-a.OccupyKcl>=0');
    SQL.Add('  and a.rowid=:rowid');

    SQL.Add('delete from  Medstore_OccupyLog  ');
    SQL.Add('where rowid=:rowid');
    ParamByName('rowid').asinteger:=rowid;
    try
      ExecSQL;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('ɾ������'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
  end;
end;

function TMedStore.SearchBoilMedFee(aQuery: tuniquery; DTClass: integer;
  datefrom, dateto: Tdatetime): boolean;
begin
  result:=false;
   with aQuery do
   begin
      close;
      sql.Clear;
      SQL.Add('SELECT b.MZH  as patId,');
      SQL.Add('       b.Name as PatName,');
      SQL.Add('       b.ksmc,          ');
      SQL.Add('       d.xmbm,          ');
      SQL.Add('       d.xmmc,          ');
      SQL.Add('       a.sl,            ');
      SQL.Add('       a.QE,            ');
      SQL.Add('       a.jyys AS DoctorID,');
      SQL.Add('       a.lrsj AS CFRQ,   ');
      SQL.Add('       c.rjdate,         ');
      SQL.Add('       ''����'' as PatClass');
      SQL.Add('FROM   mzjydx a           ');
      SQL.Add('JOIN DepPatientInfo b     ');
      SQL.Add('   ON a.mzh = b.MZH       ');
      SQL.Add('JOIN depcheck c           ');
      SQL.Add('   ON a.mzh = c.mzh       ');
      SQL.Add('      AND a.no = c.no     ');
      SQL.Add(' join jyxm  d             ');
      SQL.Add('   on a.xmbm=d.xmbm       ');
      SQL.Add('WHERE  a.xmbm IN ( ''480000004'', ''480000005'', ''480000014'')');
      case DTClass of
      0:SQL.Add('and datediff(day,a.lrsj,:datefrom)<=0   and datediff(mi,a.lrsj,:dateto)>=0 ');
      1:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(mi,c.rjdate,:dateto)>=0');
      end;
      SQL.Add('UNION ALL                 ');
      SQL.Add('SELECT b.zyh  as PatId,   ');
      SQL.Add('       b.byxm AS PatName, ');
      SQL.Add('       b.ksmc,            ');
      SQL.Add('       c.xmbm,            ');
      SQL.Add('       c.xmmc,            ');
      SQL.Add('       a.sl,              ');
      SQL.Add('       a.qe,              ');
      SQL.Add('       a.jzysbm AS DoctorID,');
      SQL.Add('       a.jzrq   AS CFRQ, ');
      SQL.Add('       b.rysj+a.no as rjdate,');
      SQL.Add('       ''סԺ'' as PatClass ');
      SQL.Add('FROM    zyjz a           ');
      SQL.Add('   JOIN zy_byinfo b      ');
      SQL.Add('     ON a.zyh = b.zyh     ');
      SQL.Add('   join jyxm  c          ');
      SQL.Add('     on a.xmbm=c.xmbm      ');
      SQL.Add('WHERE  a.xmbm IN ( ''480000004'', ''480000005'', ''480000014'')');
      case DTClass of
      0:SQL.Add('and datediff(day,a.jzrq,:datefrom)<=0   and datediff(day,a.jzrq,:dateto)>=0 ');
      1:SQL.Add('and datediff(day,b.rysj+a.no,:datefrom)<=0 and datediff(day,b.rysj+a.no,:dateto)>=0');
      end;
      ParamByName('datefrom').AsDatetime:=datefrom;
      ParamByName('dateto').AsDatetime:=dateto;
      Open;
      if isempty then exit;
  end;
  result:=true;
end;

function TMedStore.SearchDept(aQuery: tuniquery): boolean;
begin
  with aQuery do
  begin
    close;
    sql.clear;
    sql.add('select code=ksbm,name=ksmc from jgxx (nolock) where  SendMedSee=1 and ifzy=1 order by ksbm');
    open;
  end;
end;

function TMedStore.SearchExamRecord(aQuery: tuniquery; MedClass: integer;datefrom,
  dateto: Tdatetime): boolean;
begin
  result:=false;
  with  aQuery  do
  begin
   close;
   sql.clear;
   sql.Add('select a.ypbh,b.ym,b.gg,a.rksl,a.jldw,a.pfj,ypph,a.scrq,a.sxrq,cm,c.inc_name,certify,face,explain,StoreCondition,CheckDate,CheckConclusion');
   sql.Add('from xykr a,xyzb b,ghdw c,sccj d');
   sql.Add('where a.ypbh=b.ypbh    ');
   sql.Add('and  a.cjbm=d.cjbm       ');
   sql.Add('and a.ghdw=c.inc_code ');
   sql.Add('and datediff(day,rkrq,:datefrom)<=0 ');
   sql.Add('and datediff(day,rkrq,:dateto)>=0  ');
   case  MedClass of
   0: sql.Add('');
   1:sql.Add(' and b.lb<>2');
   2:sql.Add(' and b.lb=2');
   end;
   parambyname('datefrom').AsDateTime:=datefrom;
   parambyname('dateto').AsDateTime:=dateto;
   open;
   if isempty then exit;
  end;
   result:=true;
end;

function TMedStore.SearchMedStoreSaleAntibiotics(aQuery: tuniquery; yfbm,
  PatientClass, DTClass: integer; datefrom, dateto: Tdatetime): boolean;
begin
  result:=false;
    with aQuery do
    begin
      close;
      sql.Clear;
      case PatientClass of
      ALLPatient,OutPatient,InPatient:
      begin
        sql.add('SELECT b.bh,');
        sql.add('       b.xm,');
        sql.add('       a.zlbm,');
        sql.add('       a.zlm,');
        sql.add('       Count(RpCount1) AS RpCount,');
        sql.add('       Sum(RpAmt1)     AS RpAmt');
        sql.add('FROM   (SELECT a.cfys,');
        sql.add('               d.zlbm,');
        sql.add('               d.zlm,');
        sql.add('               Count(a.cfdh) AS RpCount1,');
        sql.add('               Sum(b.QE)     AS RpAmt1');
        sql.add('        FROM   MZcfdb a');
        sql.add('               JOIN MZcfyb b');
        sql.add('                 ON a.cfdh = b.cfdh');
        sql.add('               JOIN DepCheck c');
        sql.add('                 ON a.MZH = c.mzh');
        sql.add('                    AND a.no = c.[no]');
        sql.add('               join xyzb d');
        sql.add('                  on b.ypbh=d.ypbh');
        sql.add('        WHERE  1=1');
        sql.add('        and zlbm in (7,8)');
        if yfbm<>0 then SQL.Add('and a.yfbm=:yfbm');
        case DTClass of
          0:SQL.Add('and datediff(day,a.fyrq,:datefrom)<=0   and datediff(day,a.fyrq,:dateto)>=0');
          1:SQL.Add('and datediff(day,c.rjdate,:datefrom)<=0 and datediff(day,c.rjdate,:dateto)>=0');
          2:SQL.Add('and datediff(day,a.cfrq,:datefrom)<=0   and datediff(day,a.cfrq,:dateto)>=0');
        end;
        sql.add('        GROUP  BY a.cfys,d.zlbm,d.zlm,a.cfdh) a');
        sql.add('       JOIN zgzb b');
        sql.add('         ON a.cfys = b.bh');
        sql.add('GROUP  BY b.bh,b.xm,a.zlbm, a.zlm');
        sql.add('ORDER  BY b.bh,a.zlbm,a.zlm ');
      end;
      end;
        parambyname('datefrom').asdatetime :=datefrom;
        parambyname('dateto').asdatetime :=dateto;
        if yfbm<>0 then ParamByName('yfbm').AsInteger :=yfbm;
        open;
        if isempty then   exit;
    result:=true;
  end;
end;

{ TPriceAdjustMaster }

function TPriceAdjustMaster.Add(aQuery: tuniquery): integer;
begin
  result:=0;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('insert Medbank_PriceAdjustMaster(EffectiveDate,AdjustDate,opid)');
    sql.Add('values(:EffectiveDate,:AdjustDate,:opid)');
    sql.Add('select rowid=@@identity');
    parambyname('EffectiveDate').AsDateTime:=FEffectiveDate;
    parambyname('AdjustDate').AsDateTime:=FAdjustDate;
    parambyname('opid').asinteger:=Fopid;
    try
      open;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('����'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
     result:=fieldbyname('rowid').AsInteger;
  end;
end;

constructor TPriceAdjustMaster.Create;
begin

end;

function TPriceAdjustMaster.Del(aQuery: tuniquery): boolean;
begin

end;

destructor TPriceAdjustMaster.Destroy;
begin

  inherited;
end;

function TPriceAdjustMaster.Save(aQuery: tuniquery): boolean;
begin

end;

function TPriceAdjustMaster.Search(aQuery: tuniquery;datefrom,dateto:tdatetime): boolean;
begin
  Result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('select  rowid,EffectiveDate,AdjustDate,case AuditState when 1 then ''�����'' else ''δ���'' end as AuditState,opid from  Medbank_PriceAdjustMaster');
    sql.Add('where datediff(day,AdjustDate,:datefrom)<=0');
    sql.Add('  and datediff(day,AdjustDate,:dateto)>=0');
    parambyname('datefrom').asdatetime:=datefrom;
    parambyname('dateto').asdatetime:=dateto;
    open;
    if isempty then  exit;
  end;
  Result:=true;
end;

function TPriceAdjustMaster.Update(aQuery: tuniquery): boolean;
begin
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('update xyzb set  pfj=PurchasePriceAdjust,ypj=PurchasePriceAdjust,mzylsj=OutPatientSalesPriceAdjust,ylsj=InpatientSalesPriceAdjust');
    sql.Add('from Medbank_PriceAdjustDetail a,Medbank_PriceAdjustMaster b,xyzb c where a.master_rowid=b.rowid and a.ypbh=c.ypbh and b.AuditState=0 and a.Master_rowid=:rowid ');
    sql.Add('update Medbank_PriceAdjustMaster set AuditState=:AuditState where rowid=:rowid and AuditState=0');
    parambyname('rowid').AsInteger:=Frowid;
    parambyname('AuditState').asboolean:=FAuditState;
    try
      ExecSQL;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('���´���'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
  end;
end;

{ TPriceAdjustDetail }

function TPriceAdjustDetail.Add(aQuery: tuniquery;Master_rowid:integer): boolean;
begin
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('insert Medbank_PriceAdjustDetail(Master_rowid,ypbh,PurchasePrice,PurchasePriceAdjust,InpatientSalesPrice,InpatientSalesPriceAdjust');
    sql.Add(',OutPatientSalesPrice,OutPatientSalesPriceAdjust,AdjustReason,MedbankStore,InpatientSotre,Rate)');
    sql.Add('values(:Master_rowid,:ypbh,:PurchasePrice,:PurchasePriceAdjust,:InpatientSalesPrice,:InpatientSalesPriceAdjust');
    sql.Add('      ,:OutPatientSalesPrice,:OutPatientSalesPriceAdjust,:AdjustReason,:MedbankStore,:InpatientSotre,:Rate)');
    parambyname('Master_rowid').AsInteger:=Master_rowid;
    parambyname('ypbh').AsString:=Fypbh;
    parambyname('PurchasePrice').AsCurrency:=FPurchasePrice;
    parambyname('PurchasePriceAdjust').AsCurrency:=FPurchasePriceAdjust;
    parambyname('InpatientSalesPrice').AsCurrency:=FInpatientSalesPrice;
    parambyname('InpatientSalesPriceAdjust').AsCurrency:=FInpatientSalesPriceAdjust;
    parambyname('OutPatientSalesPrice').AsCurrency:=FOutPatientSalesPrice;
    parambyname('OutPatientSalesPriceAdjust').AsCurrency:=FOutPatientSalesPriceAdjust;
    parambyname('AdjustReason').AsString:=FAdjustReason;
    parambyname('MedbankStore').AsCurrency:=FMedbankStore;
    parambyname('InpatientSotre').AsCurrency:=FInpatientSotre;
    parambyname('Rate').AsCurrency:=FRate;
    try
      ExecSQL;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('���Ӵ���'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
  end;
end;

constructor TPriceAdjustDetail.Create;
begin

end;

function TPriceAdjustDetail.Del(aQuery: tuniquery;rowid:integer): boolean;
begin
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.Add('delete from Medbank_PriceAdjustDetail where rowid=:rowid');
    parambyname('rowid').AsInteger:=rowid;
    try
      ExecSQL;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('ɾ������'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
  end;
end;

destructor TPriceAdjustDetail.Destroy;
begin

  inherited;
end;

function TPriceAdjustDetail.Save(aQuery: tuniquery;Master_rowid:integer): boolean;
begin

end;

function TPriceAdjustDetail.Search(aQuery: tuniquery;Master_rowid:integer): boolean;
begin
  Result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.add('SELECT    ');
    sql.add('   c.ypbh,');
    sql.add('   c.ym,');
    sql.add('   c.gg,');
    sql.add('   c.zxdw,');
    sql.add('   c.jldw,');
    sql.add('   c.produce,');
    sql.add('   b.Rowid,');
    sql.add('   b.Master_rowid,');
    sql.add('   b.PurchasePrice,');
    sql.add('   b.PurchasePriceAdjust,');
    sql.add('   b.InpatientSalesPrice,');
    sql.add('   b.InpatientSalesPriceAdjust,');
    sql.add('   b.OutPatientSalesPrice,');
    sql.add('   b.OutPatientSalesPriceAdjust,');
    sql.add('   b.rate,');
    sql.add('   b.AdjustReason,');
    sql.add('   b.MedbankStore,');
    sql.add('   b.InpatientSotre,');
    sql.add('   c.zxdw,');
    sql.add('   a.EffectiveDate,');
    sql.add('   a.AdjustDate,');
    sql.add('   a.AuditState,');
    sql.add('   a.opid');
    sql.add('FROM               ');
    sql.add('   Medbank_PriceAdjustMaster a, ');
    sql.add('   Medbank_PriceAdjustDetail b,');
    sql.add('   xyzb c');
    sql.add('WHERE a.rowid = b.master_rowid');
    sql.add('and   b.ypbh = c.ypbh');
    sql.add('and   a.rowid = :master_rowid');
    parambyname('master_rowid').AsInteger:=Master_rowid;
    open;
    if isempty then  exit;
  end;
  Result:=true;
end;

function TPriceAdjustDetail.Update(aQuery: tuniquery;rowid:integer): boolean;
begin
  Result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.add('update  Medbank_PriceAdjustDetail  ');
    sql.add('set ');
    sql.add('  PurchasePrice=:PurchasePrice,');
    sql.add('  PurchasePriceAdjust=:PurchasePriceAdjust,');
    sql.add('  InpatientSalesPrice=:InpatientSalesPrice,');
    sql.add('  InpatientSalesPriceAdjust=:InpatientSalesPriceAdjust,');
    sql.add('  OutPatientSalesPrice=:OutPatientSalesPrice,');
    sql.add('  OutPatientSalesPriceAdjust=:OutPatientSalesPriceAdjust,');
    sql.add('  AdjustReason=:AdjustReason,');
    sql.add('  MedbankStore=:MedbankStore,');
    sql.add('  InpatientSotre=:InpatientSotre,');
    sql.add('  rate=:rate');
    sql.add('WHERE  rowid = :rowid');
    parambyname('PurchasePrice').AsCurrency :=FPurchasePrice;
    parambyname('PurchasePriceAdjust').AsCurrency :=FPurchasePriceAdjust;
    parambyname('InpatientSalesPrice').AsCurrency :=FInpatientSalesPrice;
    parambyname('InpatientSalesPriceAdjust').AsCurrency :=FInpatientSalesPriceAdjust;
    parambyname('OutPatientSalesPrice').AsCurrency :=FOutPatientSalesPrice;
    parambyname('OutPatientSalesPriceAdjust').AsCurrency :=FOutPatientSalesPriceAdjust;
    parambyname('AdjustReason').AsString :=FAdjustReason;
    parambyname('MedbankStore').AsCurrency :=FMedbankStore;
    parambyname('InpatientSotre').AsCurrency :=FInpatientSotre;
    parambyname('rate').AsCurrency :=Frate;
    parambyname('rowid').AsInteger:=rowid;
    try
      ExecSQL;
    except
    on E: Exception do
        begin
          application.MessageBox(pchar('���Ӵ���'+'('+e.Message+')'),'������Ϣ',mb_iconerror);
          exit;
        end;
    end;
  end;
  Result:=true;
end;

{ TPriceAdjust }

function TPriceAdjust.Add(aQuery: tuniquery): boolean;
begin
  {FPriceAdjustMaster.FEffectiveDate:=FEffectiveDate;
  FPriceAdjustMaster.FAdjustDate:=FAdjustDate;
  FPriceAdjustMaster.Fopid:=Fopid;
  FPriceAdjustMaster.Add(aQuery);}
//
//  FPriceAdjustDetail.FMaster_rowid:=FPriceAdjustMaster.FRowid;
//  FPriceAdjustDetail.Fypbh:=Fypbh;
//  FPriceAdjustDetail.FPurchasePrice:=FPurchasePrice;
//  FPriceAdjustDetail.FPurchasePriceAdjust:=FPurchasePriceAdjust;
//  FPriceAdjustDetail.FInpatientSalesPrice:= FInpatientSalesPrice;
//  FPriceAdjustDetail.FInpatientSalesPriceAdjust:=FInpatientSalesPriceAdjust;
//  FPriceAdjustDetail.FOutPatientSalesPrice:=FOutPatientSalesPrice;
//  FPriceAdjustDetail.FOutPatientSalesPriceAdjust:=FOutPatientSalesPriceAdjust;
//  FPriceAdjustDetail.FAdjustReason:=FAdjustReason;
//  FPriceAdjustDetail.FMedbankStore:=FMedbankStore;
//  FPriceAdjustDetail.FInpatientSotre:=FInpatientSotre;
//  FPriceAdjustDetail.FRate:=FRate;
//  FPriceAdjustDetail.Add(aQuery,);
end;

constructor TPriceAdjust.Create;
begin
 FPriceAdjustMaster:=TPriceAdjustMaster.Create;
 FPriceAdjustDetail:=TPriceAdjustDetail.Create;
end;

function TPriceAdjust.Del(aQuery: tuniquery): boolean;
begin

end;

destructor TPriceAdjust.Destroy;
begin
  FPriceAdjustMaster.Free;
  FPriceAdjustDetail.Free;
  inherited;
end;

function TPriceAdjust.Save(aQuery: tuniquery): boolean;
begin

end;

function TPriceAdjust.Search(aQuery: tuniquery): boolean;
begin
  Result:=false;
  with aQuery do
  begin
    close;
    sql.Clear;
    sql.add('SELECT c.ypbh,');
    sql.add('   c.ym,');
    sql.add('   c.gg,');
    sql.add('   c.zxdw,');
    sql.add('   c.jldw,');
    sql.add('   c.produce,');
    sql.add('   b.Rowid,');
    sql.add('   b.Master_rowid,');
    sql.add('   b.PurchasePrice,');
    sql.add('   b.PurchasePriceAdjust,');
    sql.add('   b.InpatientSalesPrice,');
    sql.add('   b.InpatientSalesPriceAdjust,');
    sql.add('   b.OutPatientSalesPrice,');
    sql.add('   b.OutPatientSalesPriceAdjust,');
    sql.add('   b.AdjustReason,');
    sql.add('   b.MedbankStore,');
    sql.add('   b.InpatientSotre,');
    sql.add('   a.Rowid, ');
    sql.add('   a.EffectiveDate,');
    sql.add('   a.AdjustDate,   ');
    sql.add('   a.opid          ');
    sql.add('FROM               ');
    sql.add('   Medbank_PriceAdjustMaster a,');
    sql.add('   Medbank_PriceAdjustDetail b,');
    sql.add('   xyzb c');
    sql.add('WHERE  a.rowid = b.master_rowid');
    sql.add('   AND b.ypbh = c.ypbh');
    open;
    if isempty then  exit;
  end;
  Result:=true;
end;

function TPriceAdjust.Update(aQuery: tuniquery): boolean;
begin

end;

{ TMyTitle }

constructor TMyTitle.Create;
begin

end;

destructor TMyTitle.Destroy;
begin

  inherited;
end;

end.