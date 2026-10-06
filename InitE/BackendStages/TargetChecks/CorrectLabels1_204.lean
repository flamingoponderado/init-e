import InitE.BackendStages.TargetChecks.CorrectLabels0_204
import InitE.BackendStages.TargetChecks.CorrectEncode0_204
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_204_eq : LabToTarget.sectionLabels 71756 Reencode0_204.lines [] = (71920, localLabels1_204) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 71756 71920 riscvConfig.encode
    Initial204.lines Reencode0_204.lines [] Reencode0_204_eq).trans
    (localLabels0_204_eq.trans (by kernel_rfl))
#print axioms localLabels1_204_eq
end InitE.BackendStages.TargetChecks.Correct
