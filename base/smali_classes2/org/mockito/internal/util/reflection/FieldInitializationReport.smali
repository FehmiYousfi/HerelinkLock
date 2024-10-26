.class public Lorg/mockito/internal/util/reflection/FieldInitializationReport;
.super Ljava/lang/Object;
.source "FieldInitializationReport.java"


# instance fields
.field private final fieldInstance:Ljava/lang/Object;

.field private final wasInitialized:Z

.field private final wasInitializedUsingConstructorArgs:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldInstance:Ljava/lang/Object;

    .line 18
    iput-boolean p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->wasInitialized:Z

    .line 19
    iput-boolean p3, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->wasInitializedUsingConstructorArgs:Z

    return-void
.end method


# virtual methods
.method public fieldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public fieldInstance()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public fieldWasInitialized()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->wasInitialized:Z

    return v0
.end method

.method public fieldWasInitializedUsingContructorArgs()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->wasInitializedUsingConstructorArgs:Z

    return v0
.end method
