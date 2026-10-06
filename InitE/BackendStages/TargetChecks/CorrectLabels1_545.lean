import InitE.BackendStages.TargetChecks.CorrectLabels0_545
import InitE.BackendStages.TargetChecks.CorrectEncode0_545
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_545_eq : LabToTarget.sectionLabels 386392 Reencode0_545.lines [] = (387096, localLabels1_545) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 386392 387096 riscvConfig.encode
    Initial545.lines Reencode0_545.lines [] Reencode0_545_eq).trans
    (localLabels0_545_eq.trans (by kernel_rfl))
#print axioms localLabels1_545_eq
end InitE.BackendStages.TargetChecks.Correct
