.class public Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "SpyOnInjectedFieldsHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 32
    new-instance p3, Lorg/mockito/internal/util/reflection/FieldReader;

    invoke-direct {p3, p2, p1}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 35
    invoke-virtual {p3}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-class v0, Lorg/mockito/Spy;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {p3}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object p3

    .line 38
    invoke-static {p3}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    .line 41
    invoke-static {p2}, Lorg/mockito/Mockito;->reset([Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v2

    invoke-interface {v2, p3}, Lorg/mockito/MockSettings;->spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object p3

    sget-object v2, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    invoke-interface {p3, v2}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p3

    .line 47
    invoke-static {p2, p1, p3}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 50
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problems initiating spied field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    :goto_0
    return v1
.end method
