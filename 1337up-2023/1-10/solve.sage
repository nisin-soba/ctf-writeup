cs = [8508903290440008966939565321248693758153261635170177499193552423579929500027826696702216711413627480472568726828904707392607240309148374882044455682656477650413559779578913981575195542381602155806438946382809049847521263107908111429547314575039079118614485792613461747911710760754291582134293099750060, 10234293217173095983648586990138462404689872504690765936890158736280331352728086141006820545673419953576281340699793983414878095413526583845311613647542879798224462254801103246845064675391113534349390649562211376117941776588135441368773636568930887968431002105334751994385414474789708434897717472259757, 6001064586644974650131784742218587067958465984737568290249286706923485137083921908971767187010824715217158349948368322929900720010489749231105336650564421771867089333709608235963711368415685056362117910529113580811922176651335662802405504434103542105450330213217418470901029864459362153866361049469621, 5859510800336462649673113647904370677448984650623412649303149431740483580968255760095323745895405406649271411277663981671465673293279417168147656423009231087547991428322779036740050269460373254323377738756038706795196225547099530503996157675637620918729310987613041873955654973230573780794437230183289, 8212120161226957435594246142362544687871307206030517377713172267061914524817671684448986080347503212333314134144272096534190656954277299391948626024244379808998220515649968150824587976113971840005858079163744362874678111323034234960076591622752217194796532407435861854992608669653483268713825154541681, 4292538496747452556903766205458518557016170261915268175117554973221631407580344459540989898488936014316805799620957521118332103032738032797936315597220903773140347787977387271254963436603728977128756213671653297994336981775219965231686927050793105808729293803455246360077380768093287937551667515822737, 8583458084429417950887051233123781099671792568724013361916924355046040863544385972858215904752358387759143712618915109914726815547284050405347634520790328222420443989299783668017365846692013464579110450651166600940834254189911732107856656458621485902792541383514622551498513045029193930072821693821256, 927938350277846540058170699346614173130036388369329189433895716040551556863284640834396837739290832786836335265440745786025530973467859153202044442045287145528583412999497854136387626360287750242048999254798532603013016406637079389023297629455299864761196574249382738851682248453939600976884575974199, 4606866838328488359534883828872534448488908284003992208192170511899852596906485417934690617926601159129473558885893097400239110669875450476234618534668886892219546199419412794765402627731086862572263105282498567494065303352715044800789544479262215220148659740517187562922289802434925672447697743660640, 5696622808956926263797513675882969816326582766528835713485415099018508834817057303528828064039948371652175876967703746446602159940653502950606513683435185458750394450192106019388424601807240033502531431423705043713657847236861816929000927218441444067742560786753091009546483807078198791541719979069795]
s = 605466527953516222016485516214431809590993588699320208021845670703468281059947406248463347211427615855012720451029976981068579151311047123161756448068506197424807516350675172131826275005312472029312861168498961728971558322943730466676859739724928104907194812943584226111451426124864722285484117269190235012612078303171378

# create matrix
tmp = vector(cs + [-s])
tmp1 = identity_matrix(11)
mat = tmp1.augment(tmp)

mat = mat.LLL()
xs = mat[0]

content = ""
for i in range(len(xs)):
    a = xs[i] % 1000
    content += chr(a)
print(content)

# INTIGRITI{3a8a32c7f6}
