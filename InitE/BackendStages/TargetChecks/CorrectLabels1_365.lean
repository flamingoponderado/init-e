import InitE.BackendStages.TargetChecks.CorrectLabels0_365
import InitE.BackendStages.TargetChecks.CorrectEncode0_365
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_365_eq : LabToTarget.sectionLabels 249708 Reencode0_365.lines [] = (250532, localLabels1_365) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 249708 250532 riscvConfig.encode
    Initial365.lines Reencode0_365.lines [] Reencode0_365_eq).trans
    (localLabels0_365_eq.trans (by kernel_rfl))
#print axioms localLabels1_365_eq
end InitE.BackendStages.TargetChecks.Correct
