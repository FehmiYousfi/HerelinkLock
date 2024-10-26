.class public Lorg/mockito/internal/util/reflection/FieldReader;
.super Ljava/lang/Object;
.source "FieldReader.java"


# instance fields
.field final changer:Lorg/mockito/internal/util/reflection/AccessibilityChanger;

.field final field:Ljava/lang/reflect/Field;

.field final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/FieldReader;->changer:Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 20
    iget-object p1, p0, Lorg/mockito/internal/util/reflection/FieldReader;->changer:Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-virtual {p1, p2}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()Ljava/lang/Object;
    .locals 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read state from field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", on instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
