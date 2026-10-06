import InitE.BackendStages.TargetChecks.CorrectLabels0_579
import InitE.BackendStages.TargetChecks.CorrectEncode0_579
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_579_eq : LabToTarget.sectionLabels 422196 Reencode0_579.lines [] = (422852, localLabels1_579) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 422196 422852 riscvConfig.encode
    Initial579.lines Reencode0_579.lines [] Reencode0_579_eq).trans
    (localLabels0_579_eq.trans (by kernel_rfl))
#print axioms localLabels1_579_eq
end InitE.BackendStages.TargetChecks.Correct
