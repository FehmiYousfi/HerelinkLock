.class Lorg/mockito/internal/runners/DefaultTestFinishedEvent;
.super Ljava/lang/Object;
.source "DefaultTestFinishedEvent.java"

# interfaces
.implements Lorg/mockito/internal/junit/TestFinishedEvent;


# instance fields
.field private final failure:Ljava/lang/Throwable;

.field private final testClassInstance:Ljava/lang/Object;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->failure:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->failure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTestClassInstance()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getTestMethodName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    return-object v0
.end method