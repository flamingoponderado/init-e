import InitE.BackendComputation
import InitE.BackendStages.Padded80
import InitE.BackendStages.Padded81
import InitE.BackendStages.Padded82
import InitE.BackendStages.Padded83
import InitE.BackendStages.Padded84
import InitE.BackendStages.Padded85
import InitE.BackendStages.Padded86
import InitE.BackendStages.Padded87
import InitE.BackendStages.Padded88
import InitE.BackendStages.Padded89
import InitE.BackendStages.Padded90
import InitE.BackendStages.Padded91
import InitE.BackendStages.Padded92
import InitE.BackendStages.Padded93
import InitE.BackendStages.Padded94
import InitE.BackendStages.Padded95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FinalChunk80_95
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_80, TargetChecks.Reencode1_81, TargetChecks.Reencode1_82, TargetChecks.Reencode1_83, TargetChecks.Reencode1_84, TargetChecks.Reencode1_85, TargetChecks.Reencode1_86, TargetChecks.Reencode1_87, TargetChecks.Reencode1_88, TargetChecks.Reencode1_89, TargetChecks.Reencode1_90, TargetChecks.Reencode1_91, TargetChecks.Reencode1_92, TargetChecks.Reencode1_93, TargetChecks.Reencode1_94, TargetChecks.Reencode1_95]
def aligned : LabSem.LabProgHOL 64 := [Alignment80, Alignment81, Alignment82, Alignment83, Alignment84, Alignment85, Alignment86, Alignment87, Alignment88, Alignment89, Alignment90, Alignment91, Alignment92, Alignment93, Alignment94, Alignment95]
def final : LabSem.LabProgHOL 64 := [FinalReencode80, FinalReencode81, FinalReencode82, FinalReencode83, FinalReencode84, FinalReencode85, FinalReencode86, FinalReencode87, FinalReencode88, FinalReencode89, FinalReencode90, FinalReencode91, FinalReencode92, FinalReencode93, FinalReencode94, FinalReencode95]
def padded : LabSem.LabProgHOL 64 := [Padded80, Padded81, Padded82, Padded83, Padded84, Padded85, Padded86, Padded87, Padded88, Padded89, Padded90, Padded91, Padded92, Padded93, Padded94, Padded95]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 10628 rest = output) : LabToTarget.updLabLen 8468 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment80_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment81_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment82_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment83_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment84_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment85_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment86_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment87_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment88_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment89_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment90_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment91_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment92_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment93_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment94_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment95_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 10628 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 8468 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode80_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode81_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode82_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode83_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode84_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode85_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode86_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode87_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode88_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode89_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode90_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode91_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode92_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode93_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode94_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode95_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded80_eq, Padded81_eq, Padded82_eq, Padded83_eq, Padded84_eq, Padded85_eq, Padded86_eq, Padded87_eq, Padded88_eq, Padded89_eq, Padded90_eq, Padded91_eq, Padded92_eq, Padded93_eq, Padded94_eq, Padded95_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded80_valid, Padded81_valid, Padded82_valid, Padded83_valid, Padded84_valid, Padded85_valid, Padded86_valid, Padded87_valid, Padded88_valid, Padded89_valid, Padded90_valid, Padded91_valid, Padded92_valid, Padded93_valid, Padded94_valid, Padded95_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitE.BackendStages.FinalChunk80_95
