.class public Lorg/cubepilot/herelinksettings/ButtonSettings;
.super Landroidx/fragment/app/Fragment;
.source "ButtonSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;,
        Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;
    }
.end annotation


# static fields
.field private static button_names:[Ljava/lang/String;


# instance fields
.field SCALE_FACTOR:D

.field SCALE_OFFSET:D

.field private button_list:Landroidx/databinding/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

.field private sp_button_list:Landroid/widget/Spinner;

.field private sp_button_list_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field warning_displayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "A short press"

    const-string v1, "B short press"

    const-string v2, "C short press"

    const-string v3, "D short press"

    const-string v4, "CAM short press"

    const-string v5, "A long press"

    const-string v6, "B long press"

    const-string v7, "C long press"

    const-string v8, "D long press"

    const-string v9, "CAM long press"

    const-string v10, "HOME short press"

    const-string v11, "HOME long press"

    .line 105
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->buttons:Ljava/util/List;

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->warning_displayed:Z

    const-wide v0, 0x408b500000000000L    # 874.0

    .line 257
    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_OFFSET:D

    const-wide/high16 v0, 0x3fe4000000000000L    # 0.625

    .line 258
    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_FACTOR:D

    return-void
.end method

.method public static configDirectory()Ljava/lang/String;
    .locals 3

    .line 297
    :try_start_0
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/rc_service_config.ini"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "General"

    const-string v2, "ConfigDir"

    .line 298
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->fetch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static configFile()Ljava/lang/String;
    .locals 3

    .line 307
    :try_start_0
    new-instance v0, Lorg/ini4j/Ini;

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/rc_service_config.ini"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "General"

    const-string v2, "KeyconfigName"

    .line 308
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->fetch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static convert(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;Lorg/cubepilot/herelinksettings/ButtonSettings;)Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;
    .locals 4

    .line 509
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    new-instance p0, Landroid/util/Pair;

    const/4 v2, 0x5

    .line 510
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const p0, 0x7f0c0020

    invoke-direct {v0, p0, v1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;-><init>(I[Landroid/util/Pair;)V

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list:Landroid/widget/Spinner;

    .line 114
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->buttons:Ljava/util/List;

    const v3, 0x1090008

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    .line 115
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 116
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$kBmSQXBMDwoUmxLlngPKMLmJRxE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$kBmSQXBMDwoUmxLlngPKMLmJRxE;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 118
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoAdd:Landroid/widget/Button;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$T3QPGGQKDAZd7WUmiin5c9n12pk;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$T3QPGGQKDAZd7WUmiin5c9n12pk;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoNew:Landroid/widget/Button;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$IPfS054fFNcl7FQ2KkTu05nk5os;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$IPfS054fFNcl7FQ2KkTu05nk5os;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoSave:Landroid/widget/Button;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$mzpPkkNO40Vkt32Bu-j9UdX9XQ0;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$mzpPkkNO40Vkt32Bu-j9UdX9XQ0;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoLoad:Landroid/widget/Button;

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$g_4tbEo0D_MkFleBy5i_SDkd-HI;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$g_4tbEo0D_MkFleBy5i_SDkd-HI;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/current_keyconfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 137
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cubepilot/herelinksettings/ButtonSettings;->loadConfigFile(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 139
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$IPfS054fFNcl7FQ2KkTu05nk5os(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->newSettings(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$TEfSBt3hRUlBSSARfPEHsJesTtE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$g_4tbEo0D_MkFleBy5i_SDkd-HI(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->loadSettings(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$kBmSQXBMDwoUmxLlngPKMLmJRxE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$loadSettings$3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".+ini$"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$loadSettings$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".ini"

    const-string v1, ""

    .line 380
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadSettings$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 390
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic lambda$mzpPkkNO40Vkt32Bu-j9UdX9XQ0(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->saveSettings(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$newSettings$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 161
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private loadConfigFile(Ljava/lang/String;)V
    .locals 9

    const-string v0, "switchType"

    const/4 v1, 0x1

    .line 317
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "KeyConfigs"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v3, Lorg/ini4j/Ini;

    invoke-direct {v3, v2}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 323
    invoke-direct {p0, v3}, Lorg/cubepilot/herelinksettings/ButtonSettings;->verifyConfig(Lorg/ini4j/Ini;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 328
    :cond_1
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-interface {v2}, Landroidx/databinding/ObservableList;->clear()V

    .line 330
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 331
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 332
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$TEfSBt3hRUlBSSARfPEHsJesTtE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$TEfSBt3hRUlBSSARfPEHsJesTtE;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v4, v2

    .line 333
    :goto_0
    sget-object v5, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8

    .line 334
    sget-object v5, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    aget-object v5, v5, v4

    const/16 v6, 0x20

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ini4j/Profile$Section;

    if-eqz v5, :cond_7

    .line 336
    new-instance v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    sget-object v7, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-direct {v6, p0, v7}, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Ljava/lang/String;)V

    .line 337
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 338
    invoke-interface {v5, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->TOGGLE:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v8}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 339
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 340
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_1

    .line 341
    :cond_2
    invoke-interface {v5, v0}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v8}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 342
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 343
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 346
    :cond_3
    :goto_1
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v7}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "defaultButton"

    .line 349
    invoke-interface {v5, v7}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 351
    iget-object v8, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_button:Landroidx/databinding/ObservableBoolean;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v8, v7}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 353
    :cond_5
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_3

    .line 347
    :cond_6
    :goto_2
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    const-string v8, "defaultValue"

    invoke-interface {v5, v8}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/cubepilot/herelinksettings/ButtonSettings;->sbusToPPM(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 356
    :goto_3
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->active_val:Landroidx/databinding/ObservableInt;

    const-string v8, "value"

    invoke-interface {v5, v8}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/cubepilot/herelinksettings/ButtonSettings;->sbusToPPM(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 357
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel:Landroidx/databinding/ObservableInt;

    const-string v8, "channel"

    invoke-interface {v5, v8}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 358
    iget-object v7, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->sbus:Landroidx/databinding/ObservableInt;

    const-string v8, "sbus"

    invoke-interface {v5, v8}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 359
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    sget-object v7, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 360
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-static {v6, p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->convert(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;Lorg/cubepilot/herelinksettings/ButtonSettings;)Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/databinding/ObservableList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 363
    :cond_8
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->updateCurrentFile(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Load Successful"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Load Failed"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private loadSettings(Landroid/view/View;)V
    .locals 5

    .line 374
    :try_start_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "KeyConfigs"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 376
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Config dir empty"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 379
    :cond_0
    sget-object v2, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 380
    sget-object v2, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;

    invoke-interface {v1, v2}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    const-string v2, "Load Config"

    .line 381
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 382
    new-instance v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x1090009

    invoke-direct {v3, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 385
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 386
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09020d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {v3, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 388
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p1, "OK"

    .line 389
    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$TObCDggdqeDarz0_9xg54epdsmc;

    invoke-direct {v1, p0, v2}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$TObCDggdqeDarz0_9xg54epdsmc;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/widget/Spinner;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p1, "Cancel"

    .line 390
    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$hjiekHYvRpcoBolA9201BYHpu3M;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$hjiekHYvRpcoBolA9201BYHpu3M;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private newSettings(Landroid/view/View;)V
    .locals 2

    .line 156
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "New Config"

    .line 157
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 158
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 160
    new-instance p1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;

    invoke-direct {p1, p0, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/widget/EditText;)V

    const-string v1, "OK"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    sget-object p1, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$gxaxRdkjAipAuXs04dpvv-Ypf-4;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$gxaxRdkjAipAuXs04dpvv-Ypf-4;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private saveSettings(Landroid/view/View;)V
    .locals 12

    const-string p1, "scrollwheel"

    const/4 v0, 0x1

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->tvFileName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0x1080078

    if-gtz v2, :cond_0

    .line 178
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "No Config name set"

    .line 179
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Invalid Config"

    .line 180
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 185
    :cond_0
    new-instance v2, Lorg/ini4j/Ini;

    invoke-direct {v2}, Lorg/ini4j/Ini;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 186
    :goto_0
    iget-object v6, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-interface {v6}, Landroidx/databinding/ObservableList;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "channel"

    const-string v8, "sbus"

    if-ge v5, v6, :cond_5

    .line 187
    :try_start_1
    iget-object v6, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-interface {v6, v5}, Landroidx/databinding/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    invoke-virtual {v6}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->getItemModel()Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    move-result-object v6

    .line 188
    iget-object v9, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    const/16 v10, 0x20

    const/16 v11, 0x5f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 190
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v11, "switchType"

    if-eqz v10, :cond_1

    .line 191
    :try_start_2
    sget-object v10, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->TOGGLE:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v10}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v11, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 192
    :cond_1
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 193
    sget-object v10, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v10}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v11, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 195
    :cond_2
    sget-object v10, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v10}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v11, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :goto_1
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v4

    goto :goto_3

    .line 200
    :cond_4
    :goto_2
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    :goto_3
    const-string v11, "defaultValue"

    .line 202
    invoke-virtual {p0, v10}, Lorg/cubepilot/herelinksettings/ButtonSettings;->ppmToSbus(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v11, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "defaultButton"

    .line 203
    iget-object v11, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_button:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v9, v10, v11}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->active_val:Landroidx/databinding/ObservableInt;

    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    const-string v11, "value"

    .line 205
    invoke-virtual {p0, v10}, Lorg/cubepilot/herelinksettings/ButtonSettings;->ppmToSbus(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v11, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v10, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    .line 208
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v7, v10}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    iget-object v6, v6, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->sbus:Landroidx/databinding/ObservableInt;

    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v9, v8, v6}, Lorg/ini4j/Ini;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 214
    :cond_5
    invoke-direct {p0, v2}, Lorg/cubepilot/herelinksettings/ButtonSettings;->verifyConfig(Lorg/ini4j/Ini;)Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    .line 218
    :cond_6
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    :try_start_3
    new-instance v5, Lorg/ini4j/Ini;

    invoke-direct {v5, v4}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, p1}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ini4j/Profile$Section;

    if-eqz v5, :cond_8

    .line 223
    invoke-interface {v5, v8}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 224
    invoke-interface {v5, v7}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v2, v6, v5, v9}, Lorg/cubepilot/herelinksettings/ButtonSettings;->verifyScrollWheelCfg(Lorg/ini4j/Ini;IILandroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    return-void

    .line 228
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v7, v5}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v8, v5}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 233
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    :cond_8
    :goto_4
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "KeyConfigs"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ini"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    .line 236
    invoke-virtual {v2, v4}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    .line 238
    new-instance p1, Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/ButtonSettings;->configDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/current_keyconfig"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    .line 241
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Save Successful"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 242
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->warning_displayed:Z

    if-nez p1, :cond_9

    .line 243
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Please DO NOT map non-failsafe modes via this Config. Use In-App MAVLink based Button Config for non-failsafe modes."

    .line 244
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Warning"

    .line 245
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 248
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->warning_displayed:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    return-void

    :catch_1
    move-exception p1

    .line 251
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Save Failed"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static setList(Landroidx/recyclerview/widget/RecyclerView;Landroidx/databinding/ObservableList;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 515
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_1

    .line 518
    new-instance p2, Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-direct {p2, p1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;-><init>(Landroidx/databinding/ObservableList;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 520
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_2
    return-void
.end method

.method private updateCurrentFile(Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private verifyConfig(Lorg/ini4j/Ini;)Z
    .locals 19

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 400
    :goto_0
    sget-object v3, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 401
    aget-object v3, v3, v2

    const/16 v4, 0x5f

    const/16 v6, 0x20

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string v7, "switchType"

    .line 402
    invoke-virtual {v0, v3, v7}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1
    const-string v9, "defaultButton"

    .line 406
    invoke-virtual {v0, v3, v9}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 409
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 411
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 414
    sget-object v11, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v11}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v11

    if-ne v8, v11, :cond_3

    if-nez v10, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_2
    move v12, v11

    const/4 v11, 0x0

    .line 418
    :goto_3
    sget-object v13, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    array-length v14, v13

    const-string v15, "sbus"

    const-string v5, "channel"

    const-string v1, "Invalid Config"

    if-ge v11, v14, :cond_c

    if-ne v2, v11, :cond_4

    :goto_4
    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 422
    :cond_4
    aget-object v13, v13, v11

    const/16 v14, 0x5f

    invoke-virtual {v13, v6, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 423
    invoke-virtual {v0, v13, v7}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_5

    goto :goto_4

    .line 428
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v14, "_"

    .line 430
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    aget-object v4, v18, v16

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v16

    if-ne v4, v14, :cond_6

    .line 431
    sget-object v4, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-static {v4}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->access$000(Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;)I

    move-result v4

    if-ne v6, v4, :cond_6

    .line 432
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-direct {v4, v14}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v7

    const/4 v14, 0x2

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v3, v7, v16

    const/4 v14, 0x1

    aput-object v13, v7, v14

    const-string v14, "Cannot share Momentary Button %s with %s"

    .line 433
    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    .line 434
    invoke-virtual {v7, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    const v14, 0x1080078

    invoke-virtual {v7, v14}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 436
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_5

    :cond_6
    move-object/from16 v18, v7

    .line 440
    :goto_5
    invoke-virtual {v0, v3, v15}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v15}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 441
    invoke-virtual {v0, v3, v5}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v5}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_7

    .line 446
    :cond_7
    invoke-virtual {v0, v13, v9}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 448
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 450
    :goto_6
    sget-object v5, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v5}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v5

    if-ne v8, v5, :cond_a

    sget-object v5, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    .line 451
    invoke-virtual {v5}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->getValue()I

    move-result v5

    if-ne v6, v5, :cond_a

    if-eqz v10, :cond_9

    if-eqz v4, :cond_9

    .line 454
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const-string v3, "Buttons %s and %s both can\'t be default"

    .line 455
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 456
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080078

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v4

    :cond_9
    if-eqz v4, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    .line 464
    :cond_a
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const-string v6, "Cannot share Toggle/Momentary Button %s with %s on same channel"

    .line 465
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 466
    invoke-virtual {v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v5, 0x1080078

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    :cond_b
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v18

    const/16 v4, 0x5f

    const/16 v6, 0x20

    goto/16 :goto_3

    :cond_c
    if-nez v12, :cond_0

    .line 473
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 475
    invoke-virtual {v0, v3, v5}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 476
    invoke-virtual {v0, v3, v15}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string v0, "Default Button not set for channel %s bus %s "

    .line 474
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v6

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method public static verifyScrollWheelCfg(Lorg/ini4j/Ini;IILandroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 487
    :goto_0
    sget-object v2, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_names:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 488
    aget-object v2, v2, v1

    const/16 v3, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "switchType"

    .line 489
    invoke-virtual {p0, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "sbus"

    .line 493
    invoke-virtual {p0, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "channel"

    .line 496
    invoke-virtual {p0, v2, v3}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 497
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const-string p2, "Cannot share Button %s with scrollweel"

    .line 498
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Invalid Config"

    .line 499
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1080078

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 501
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method


# virtual methods
.method public synthetic lambda$initViews$0$ButtonSettings(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    invoke-direct {v0, p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-static {v0, p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->convert(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;Lorg/cubepilot/herelinksettings/ButtonSettings;)Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/databinding/ObservableList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$loadSettings$5$ButtonSettings(Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->loadConfigFile(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$newSettings$1$ButtonSettings(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->updateCurrentFile(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c001c

    .line 85
    invoke-static {p1, v0, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    .line 86
    new-instance p1, Landroidx/databinding/ObservableArrayList;

    invoke-direct {p1}, Landroidx/databinding/ObservableArrayList;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    .line 87
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->setListLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 88
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    iget-object p2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->setModelList(Landroidx/databinding/ObservableList;)V

    .line 89
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 91
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->mBinding:Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeleteClick(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->button_list:Landroidx/databinding/ObservableList;

    invoke-static {p1, p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->convert(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;Lorg/cubepilot/herelinksettings/ButtonSettings;)Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/databinding/ObservableList;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->sp_button_list_adapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$kBmSQXBMDwoUmxLlngPKMLmJRxE;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$kBmSQXBMDwoUmxLlngPKMLmJRxE;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 97
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/ButtonSettings;->initViews()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public ppmToSbus(I)I
    .locals 4

    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    const/16 v2, 0x898

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x36a

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x36b

    if-lt p1, v0, :cond_2

    const/16 v0, 0x868

    if-gt p1, v0, :cond_2

    int-to-double v0, p1

    .line 269
    iget-wide v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_OFFSET:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_FACTOR:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x869

    if-lt p1, v0, :cond_3

    if-gt p1, v2, :cond_3

    const/16 v1, 0x7ff

    :cond_3
    :goto_0
    return v1
.end method

.method sbusToPPM(I)I
    .locals 4

    if-ltz p1, :cond_3

    const/16 v0, 0x7ff

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x320

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const/16 p1, 0x898

    goto :goto_0

    :cond_2
    int-to-double v0, p1

    .line 288
    iget-wide v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_FACTOR:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings;->SCALE_OFFSET:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    :goto_0
    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
