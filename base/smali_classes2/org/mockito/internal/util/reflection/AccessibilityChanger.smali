.class public Lorg/mockito/internal/util/reflection/AccessibilityChanger;
.super Ljava/lang/Object;
.source "AccessibilityChanger.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private wasAccessible:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->wasAccessible:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public enableAccess(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->wasAccessible:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method

.method public safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->wasAccessible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
