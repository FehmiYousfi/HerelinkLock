.class public Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;
.super Ljava/lang/Object;
.source "MethodDelegation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForStaticMethod"
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;)V"
        }
    .end annotation

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->records:Ljava/util/List;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;",
            ")",
            "Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 732
    invoke-interface {p1, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;->compile(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_0
    new-instance p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 705
    instance-of p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;

    return p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;
    .locals 1

    .line 744
    new-instance p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForStaticCall;

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->records:Ljava/util/List;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForStaticCall;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 705
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->records:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->records:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 705
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->records:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
