.class public abstract Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;
.super Ljava/lang/Object;
.source "AbstractExtensiblePrincipal.java"

# interfaces
.implements Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/security/Principal;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final additionalInfo:Lorg/eclipse/californium/elements/auth/AdditionalInfo;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 46
    invoke-static {}, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->empty()Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;->additionalInfo:Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    goto :goto_0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;->additionalInfo:Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getExtendedInfo()Lorg/eclipse/californium/elements/auth/AdditionalInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;->additionalInfo:Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    return-object v0
.end method
