.class public interface abstract Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal;
.super Ljava/lang/Object;
.source "ExtensiblePrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/security/Principal;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/Principal;"
    }
.end annotation


# virtual methods
.method public abstract amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/auth/AdditionalInfo;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getExtendedInfo()Lorg/eclipse/californium/elements/auth/AdditionalInfo;
.end method
