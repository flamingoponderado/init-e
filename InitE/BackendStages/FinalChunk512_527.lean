import InitE.BackendComputation
import InitE.BackendStages.Padded512
import InitE.BackendStages.Padded513
import InitE.BackendStages.Padded514
import InitE.BackendStages.Padded515
import InitE.BackendStages.Padded516
import InitE.BackendStages.Padded517
import InitE.BackendStages.Padded518
import InitE.BackendStages.Padded519
import InitE.BackendStages.Padded520
import InitE.BackendStages.Padded521
import InitE.BackendStages.Padded522
import InitE.BackendStages.Padded523
import InitE.BackendStages.Padded524
import InitE.BackendStages.Padded525
import InitE.BackendStages.Padded526
import InitE.BackendStages.Padded527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FinalChunk512_527
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_512, TargetChecks.Reencode1_513, TargetChecks.Reencode1_514, TargetChecks.Reencode1_515, TargetChecks.Reencode1_516, TargetChecks.Reencode1_517, TargetChecks.Reencode1_518, TargetChecks.Reencode1_519, TargetChecks.Reencode1_520, TargetChecks.Reencode1_521, TargetChecks.Reencode1_522, TargetChecks.Reencode1_523, TargetChecks.Reencode1_524, TargetChecks.Reencode1_525, TargetChecks.Reencode1_526, TargetChecks.Reencode1_527]
def aligned : LabSem.LabProgHOL 64 := [Alignment512, Alignment513, Alignment514, Alignment515, Alignment516, Alignment517, Alignment518, Alignment519, Alignment520, Alignment521, Alignment522, Alignment523, Alignment524, Alignment525, Alignment526, Alignment527]
def final : LabSem.LabProgHOL 64 := [FinalReencode512, FinalReencode513, FinalReencode514, FinalReencode515, FinalReencode516, FinalReencode517, FinalReencode518, FinalReencode519, FinalReencode520, FinalReencode521, FinalReencode522, FinalReencode523, FinalReencode524, FinalReencode525, FinalReencode526, FinalReencode527]
def padded : LabSem.LabProgHOL 64 := [Padded512, Padded513, Padded514, Padded515, Padded516, Padded517, Padded518, Padded519, Padded520, Padded521, Padded522, Padded523, Padded524, Padded525, Padded526, Padded527]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 335016 rest = output) : LabToTarget.updLabLen 322512 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment512_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment513_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment514_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment515_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment516_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment517_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment518_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment519_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment520_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment521_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment522_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment523_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment524_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment525_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment526_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment527_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 335016 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 322512 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode512_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode513_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode514_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode515_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode516_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode517_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode518_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode519_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode520_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode521_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode522_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode523_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode524_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode525_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode526_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode527_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded512_eq, Padded513_eq, Padded514_eq, Padded515_eq, Padded516_eq, Padded517_eq, Padded518_eq, Padded519_eq, Padded520_eq, Padded521_eq, Padded522_eq, Padded523_eq, Padded524_eq, Padded525_eq, Padded526_eq, Padded527_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded512_valid, Padded513_valid, Padded514_valid, Padded515_valid, Padded516_valid, Padded517_valid, Padded518_valid, Padded519_valid, Padded520_valid, Padded521_valid, Padded522_valid, Padded523_valid, Padded524_valid, Padded525_valid, Padded526_valid, Padded527_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitE.BackendStages.FinalChunk512_527
