.class public Lorg/eclipse/californium/elements/StrictDtlsEndpointContextMatcher;
.super Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;
.source "StrictDtlsEndpointContextMatcher.java"


# static fields
.field private static final DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    const-string v1, "strict context"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/StrictDtlsEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    sget-object v0, Lorg/eclipse/californium/elements/StrictDtlsEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;-><init>(Lorg/eclipse/californium/elements/Definitions;Z)V

    return-void
.end method