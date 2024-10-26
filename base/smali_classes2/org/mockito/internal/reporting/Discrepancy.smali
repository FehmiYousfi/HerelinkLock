.class public Lorg/mockito/internal/reporting/Discrepancy;
.super Ljava/lang/Object;
.source "Discrepancy.java"


# instance fields
.field private final actualCount:I

.field private final wantedCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/mockito/internal/reporting/Discrepancy;->wantedCount:I

    .line 14
    iput p2, p0, Lorg/mockito/internal/reporting/Discrepancy;->actualCount:I

    return-void
.end method


# virtual methods
.method public getActualCount()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/mockito/internal/reporting/Discrepancy;->actualCount:I

    return v0
.end method

.method public getPluralizedActualCount()Ljava/lang/String;
    .locals 1

    .line 30
    iget v0, p0, Lorg/mockito/internal/reporting/Discrepancy;->actualCount:I

    invoke-static {v0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluralizedWantedCount()Ljava/lang/String;
    .locals 1

    .line 22
    iget v0, p0, Lorg/mockito/internal/reporting/Discrepancy;->wantedCount:I

    invoke-static {v0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantedCount()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/mockito/internal/reporting/Discrepancy;->wantedCount:I

    return v0
.end method
