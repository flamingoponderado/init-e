import InitE.BackendStages.TargetChecks.CorrectLabels0_530
import InitE.BackendStages.TargetChecks.CorrectEncode0_530
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_530_eq : LabToTarget.sectionLabels 375904 Reencode0_530.lines [] = (376332, localLabels1_530) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 375904 376332 riscvConfig.encode
    Initial530.lines Reencode0_530.lines [] Reencode0_530_eq).trans
    (localLabels0_530_eq.trans (by kernel_rfl))
#print axioms localLabels1_530_eq
end InitE.BackendStages.TargetChecks.Correct
