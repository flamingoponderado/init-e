import InitE.BackendStages.TargetChecks.CorrectLabels0_222
import InitE.BackendStages.TargetChecks.CorrectEncode0_222
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_222_eq : LabToTarget.sectionLabels 84404 Reencode0_222.lines [] = (85552, localLabels1_222) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 84404 85552 riscvConfig.encode
    Initial222.lines Reencode0_222.lines [] Reencode0_222_eq).trans
    (localLabels0_222_eq.trans (by kernel_rfl))
#print axioms localLabels1_222_eq
end InitE.BackendStages.TargetChecks.Correct
