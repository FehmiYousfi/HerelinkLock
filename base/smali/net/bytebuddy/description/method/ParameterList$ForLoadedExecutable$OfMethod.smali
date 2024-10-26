.class public Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;
.super Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 2

    .line 315
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;->executable:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;-><init>(Ljava/lang/reflect/Method;I)V

    return-object v0
.end method
