.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;
.super Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;
.source "MethodGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Detached"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<",
        "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final identifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;)V"
        }
    .end annotation

    .line 916
    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;-><init>(Ljava/lang/String;)V

    .line 917
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;->identifiers:Ljava/util/Set;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;
    .locals 2

    .line 927
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method protected getIdentifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;->identifiers:Ljava/util/Set;

    return-object v0
.end method
