import InitE.BackendStages.TargetChecks.CorrectLabels0_271
import InitE.BackendStages.TargetChecks.CorrectEncode0_271
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_271_eq : LabToTarget.sectionLabels 168632 Reencode0_271.lines [] = (168960, localLabels1_271) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 168632 168960 riscvConfig.encode
    Initial271.lines Reencode0_271.lines [] Reencode0_271_eq).trans
    (localLabels0_271_eq.trans (by kernel_rfl))
#print axioms localLabels1_271_eq
end InitE.BackendStages.TargetChecks.Correct
