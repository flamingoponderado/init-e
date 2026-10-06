import InitE.BackendStages.TargetChecks.CorrectLabels0_587
import InitE.BackendStages.TargetChecks.CorrectEncode0_587
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_587_eq : LabToTarget.sectionLabels 428488 Reencode0_587.lines [] = (430372, localLabels1_587) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 428488 430372 riscvConfig.encode
    Initial587.lines Reencode0_587.lines [] Reencode0_587_eq).trans
    (localLabels0_587_eq.trans (by kernel_rfl))
#print axioms localLabels1_587_eq
end InitE.BackendStages.TargetChecks.Correct
