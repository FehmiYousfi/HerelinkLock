.class public Lorg/mockito/internal/reporting/SmartPrinter;
.super Ljava/lang/Object;
.source "SmartPrinter.java"


# instance fields
.field private final actual:Ljava/lang/String;

.field private final wanted:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/invocation/Invocation;[Ljava/lang/Integer;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/mockito/internal/reporting/PrintSettings;->setMultiline(Z)V

    .line 25
    invoke-virtual {v0, p3}, Lorg/mockito/internal/reporting/PrintSettings;->setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V

    .line 27
    invoke-virtual {v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/MatchableInvocation;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p2}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActual()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actual:Ljava/lang/String;

    return-object v0
.end method

.method public getWanted()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    return-object v0
.end method
