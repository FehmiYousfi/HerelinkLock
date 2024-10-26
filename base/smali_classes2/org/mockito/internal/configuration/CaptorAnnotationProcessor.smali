.class public Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;
.super Ljava/lang/Object;
.source "CaptorAnnotationProcessor.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "Lorg/mockito/Captor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lorg/mockito/Captor;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;->process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    .line 19
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 20
    const-class v0, Lorg/mockito/ArgumentCaptor;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    new-instance p1, Lorg/mockito/internal/util/reflection/GenericMaster;

    invoke-direct {p1}, Lorg/mockito/internal/util/reflection/GenericMaster;-><init>()V

    invoke-virtual {p1, p2}, Lorg/mockito/internal/util/reflection/GenericMaster;->getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lorg/mockito/ArgumentCaptor;->forClass(Ljava/lang/Class;)Lorg/mockito/ArgumentCaptor;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Captor field must be of the type ArgumentCaptor.\nField: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has wrong type\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "For info how to use @Captor annotations see examples in javadoc for MockitoAnnotations class."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
