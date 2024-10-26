.class Lorg/mockito/internal/framework/DefaultMockitoSession$1;
.super Ljava/lang/Object;
.source "DefaultMockitoSession.java"

# interfaces
.implements Lorg/mockito/internal/junit/TestFinishedEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/framework/DefaultMockitoSession;->finishMocking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;


# direct methods
.method constructor <init>(Lorg/mockito/internal/framework/DefaultMockitoSession;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestClassInstance()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;

    invoke-static {v0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->access$000(Lorg/mockito/internal/framework/DefaultMockitoSession;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTestMethodName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
