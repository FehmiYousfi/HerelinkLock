.class public Lorg/mockito/internal/util/MockCreationValidator;
.super Ljava/lang/Object;
.source "MockCreationValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateConstructorUse(ZLorg/mockito/mock/SerializableMode;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 59
    sget-object p1, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public validateDelegatedInstance(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public validateExtraInterfaces(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesCannotContainMockedType(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method

.method public validateMockedType(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public validateType(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$TypeMockability;->nonMockableReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->cannotMockClass(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
