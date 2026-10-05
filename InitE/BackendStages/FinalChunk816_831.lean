import InitE.BackendComputation
import InitE.BackendStages.Padded816
import InitE.BackendStages.Padded817
import InitE.BackendStages.Padded818
import InitE.BackendStages.Padded819
import InitE.BackendStages.Padded820
import InitE.BackendStages.Padded821
import InitE.BackendStages.Padded822
import InitE.BackendStages.Padded823
import InitE.BackendStages.Padded824
import InitE.BackendStages.Padded825
import InitE.BackendStages.Padded826
import InitE.BackendStages.Padded827
import InitE.BackendStages.Padded828
import InitE.BackendStages.Padded829
import InitE.BackendStages.Padded830
import InitE.BackendStages.Padded831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FinalChunk816_831
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_816, TargetChecks.Correct.Reencode1_817, TargetChecks.Correct.Reencode1_818, TargetChecks.Correct.Reencode1_819, TargetChecks.Correct.Reencode1_820, TargetChecks.Correct.Reencode1_821, TargetChecks.Correct.Reencode1_822, TargetChecks.Correct.Reencode1_823, TargetChecks.Correct.Reencode1_824, TargetChecks.Correct.Reencode1_825, TargetChecks.Correct.Reencode1_826, TargetChecks.Correct.Reencode1_827, TargetChecks.Correct.Reencode1_828, TargetChecks.Correct.Reencode1_829, TargetChecks.Correct.Reencode1_830, TargetChecks.Correct.Reencode1_831]
def aligned : LabSem.LabProgHOL 64 := [Alignment816, Alignment817, Alignment818, Alignment819, Alignment820, Alignment821, Alignment822, Alignment823, Alignment824, Alignment825, Alignment826, Alignment827, Alignment828, Alignment829, Alignment830, Alignment831]
def final : LabSem.LabProgHOL 64 := [FinalReencode816, FinalReencode817, FinalReencode818, FinalReencode819, FinalReencode820, FinalReencode821, FinalReencode822, FinalReencode823, FinalReencode824, FinalReencode825, FinalReencode826, FinalReencode827, FinalReencode828, FinalReencode829, FinalReencode830, FinalReencode831]
def padded : LabSem.LabProgHOL 64 := [Padded816, Padded817, Padded818, Padded819, Padded820, Padded821, Padded822, Padded823, Padded824, Padded825, Padded826, Padded827, Padded828, Padded829, Padded830, Padded831]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 816952 rest = output) : LabToTarget.updLabLen 787360 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment816_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment817_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment818_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment819_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment820_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment821_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment822_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment823_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment824_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment825_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment826_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment827_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment828_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment829_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment830_eq)
  apply InitE.BackendComputation.updLabLen_cons (head := Alignment831_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 816952 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 787360 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode816_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode817_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode818_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode819_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode820_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode821_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode822_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode823_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode824_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode825_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode826_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode827_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode828_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode829_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode830_eq)
  apply InitE.BackendComputation.encSecsAgain_cons (head := FinalReencode831_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded816_eq, Padded817_eq, Padded818_eq, Padded819_eq, Padded820_eq, Padded821_eq, Padded822_eq, Padded823_eq, Padded824_eq, Padded825_eq, Padded826_eq, Padded827_eq, Padded828_eq, Padded829_eq, Padded830_eq, Padded831_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded816_valid, Padded817_valid, Padded818_valid, Padded819_valid, Padded820_valid, Padded821_valid, Padded822_valid, Padded823_valid, Padded824_valid, Padded825_valid, Padded826_valid, Padded827_valid, Padded828_valid, Padded829_valid, Padded830_valid, Padded831_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitE.BackendStages.FinalChunk816_831
