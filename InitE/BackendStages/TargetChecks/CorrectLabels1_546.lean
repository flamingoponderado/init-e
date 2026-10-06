import InitE.BackendStages.TargetChecks.CorrectLabels0_546
import InitE.BackendStages.TargetChecks.CorrectEncode0_546
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_546_eq : LabToTarget.sectionLabels 387096 Reencode0_546.lines [] = (387956, localLabels1_546) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 387096 387956 riscvConfig.encode
    Initial546.lines Reencode0_546.lines [] Reencode0_546_eq).trans
    (localLabels0_546_eq.trans (by kernel_rfl))
#print axioms localLabels1_546_eq
end InitE.BackendStages.TargetChecks.Correct
