.class public Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;
.super Lorg/mockito/internal/reporting/Discrepancy;
.source "AtLeastDiscrepancy.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getPluralizedWantedCount()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*at least* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedWantedCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
