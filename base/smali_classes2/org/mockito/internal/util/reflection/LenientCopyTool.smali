.class public Lorg/mockito/internal/util/reflection/LenientCopyTool;
.super Ljava/lang/Object;
.source "LenientCopyTool.java"


# instance fields
.field fieldCopier:Lorg/mockito/internal/util/reflection/FieldCopier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldCopier;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/FieldCopier;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/LenientCopyTool;->fieldCopier:Lorg/mockito/internal/util/reflection/FieldCopier;

    return-void
.end method

.method private copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyValues(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 26
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyValues(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p3

    .line 33
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v3, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v3}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    .line 40
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 41
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/LenientCopyTool;->fieldCopier:Lorg/mockito/internal/util/reflection/FieldCopier;

    invoke-virtual {v4, p1, p2, v2}, Lorg/mockito/internal/util/reflection/FieldCopier;->copyValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :catchall_0
    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public copyToMock(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public copyToRealObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
