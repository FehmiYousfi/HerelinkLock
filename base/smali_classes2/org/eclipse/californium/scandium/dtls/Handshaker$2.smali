.class synthetic Lorg/eclipse/californium/scandium/dtls/Handshaker$2;
.super Ljava/lang/Object;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 653
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/ContentType;->values()[Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    :try_start_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
