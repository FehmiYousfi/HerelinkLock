.class public Lorg/mockito/internal/creation/DelegatingMethod;
.super Ljava/lang/Object;
.source "DelegatingMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/MockitoMethod;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_0
    instance-of v0, p1, Lorg/mockito/internal/creation/DelegatingMethod;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lorg/mockito/internal/creation/DelegatingMethod;

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    return v0
.end method
