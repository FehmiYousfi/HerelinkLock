.class synthetic Lorg/eclipse/californium/scandium/util/ServerNames$1;
.super Ljava/lang/Object;
.source "ServerNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/util/ServerNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$util$ServerName$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 170
    invoke-static {}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->values()[Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/californium/scandium/util/ServerNames$1;->$SwitchMap$org$eclipse$californium$scandium$util$ServerName$NameType:[I

    :try_start_0
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerNames$1;->$SwitchMap$org$eclipse$californium$scandium$util$ServerName$NameType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
