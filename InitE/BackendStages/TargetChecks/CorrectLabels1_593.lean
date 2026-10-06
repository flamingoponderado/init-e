import InitE.BackendStages.TargetChecks.CorrectLabels0_593
import InitE.BackendStages.TargetChecks.CorrectEncode0_593
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_593_eq : LabToTarget.sectionLabels 439868 Reencode0_593.lines [] = (440692, localLabels1_593) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 439868 440692 riscvConfig.encode
    Initial593.lines Reencode0_593.lines [] Reencode0_593_eq).trans
    (localLabels0_593_eq.trans (by kernel_rfl))
#print axioms localLabels1_593_eq
end InitE.BackendStages.TargetChecks.Correct
