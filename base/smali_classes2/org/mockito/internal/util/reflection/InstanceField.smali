.class public Lorg/mockito/internal/util/reflection/InstanceField;
.super Ljava/lang/Object;
.source "InstanceField.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

.field private final instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "field"

    .line 32
    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    const-string p1, "instance"

    .line 33
    invoke-static {p2, p1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    return-void
.end method

.method private reader()Lorg/mockito/internal/util/reflection/FieldReader;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldReader;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    return-object v0
.end method


# virtual methods
.method public annotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    check-cast p1, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 131
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAnnotatedBy(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isNull()Z
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->reader()Lorg/mockito/internal/util/reflection/FieldReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public jdkField()Ljava/lang/reflect/Field;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->reader()Lorg/mockito/internal/util/reflection/FieldReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p1}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
