.class public Lorg/mockito/internal/debugging/WarningsPrinterImpl;
.super Ljava/lang/Object;
.source "WarningsPrinterImpl.java"


# instance fields
.field private final finder:Lorg/mockito/internal/debugging/WarningsFinder;

.field private final warnAboutUnstubbed:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;Z)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lorg/mockito/internal/debugging/WarningsFinder;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/debugging/WarningsFinder;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p3, v0}, Lorg/mockito/internal/debugging/WarningsPrinterImpl;-><init>(ZLorg/mockito/internal/debugging/WarningsFinder;)V

    return-void
.end method

.method constructor <init>(ZLorg/mockito/internal/debugging/WarningsFinder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->warnAboutUnstubbed:Z

    .line 23
    iput-object p2, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->finder:Lorg/mockito/internal/debugging/WarningsFinder;

    return-void
.end method


# virtual methods
.method public print()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Lorg/mockito/internal/debugging/LoggingListener;

    iget-boolean v1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->warnAboutUnstubbed:Z

    invoke-direct {v0, v1}, Lorg/mockito/internal/debugging/LoggingListener;-><init>(Z)V

    .line 28
    iget-object v1, p0, Lorg/mockito/internal/debugging/WarningsPrinterImpl;->finder:Lorg/mockito/internal/debugging/WarningsFinder;

    invoke-virtual {v1, v0}, Lorg/mockito/internal/debugging/WarningsFinder;->find(Lorg/mockito/internal/debugging/FindingsListener;)V

    .line 29
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/LoggingListener;->getStubbingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
