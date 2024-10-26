.class public Lorg/mockito/internal/configuration/MockAnnotationProcessor;
.super Ljava/lang/Object;
.source "MockAnnotationProcessor.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "Lorg/mockito/Mock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lorg/mockito/Mock;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    .line 18
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lorg/mockito/Mock;->extraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 20
    invoke-interface {p1}, Lorg/mockito/Mock;->extraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;

    .line 22
    :cond_0
    invoke-interface {p1}, Lorg/mockito/Mock;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p1}, Lorg/mockito/Mock;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    .line 27
    :goto_0
    invoke-interface {p1}, Lorg/mockito/Mock;->serializable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v0}, Lorg/mockito/MockSettings;->serializable()Lorg/mockito/MockSettings;

    .line 32
    :cond_2
    invoke-interface {p1}, Lorg/mockito/Mock;->answer()Lorg/mockito/Answers;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    .line 33
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
