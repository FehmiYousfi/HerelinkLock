.class public Lorg/eclipse/californium/elements/TcpEndpointContextMatcher;
.super Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;
.source "TcpEndpointContextMatcher.java"


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

    .line 23
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    const-string v1, "tcp context"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/TcpEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Lorg/eclipse/californium/elements/TcpEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;-><init>(Lorg/eclipse/californium/elements/Definitions;)V

    return-void
.end method
