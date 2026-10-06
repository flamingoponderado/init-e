import InitE.BackendStages.TargetChecks.CorrectLabels0_307
import InitE.BackendStages.TargetChecks.CorrectEncode0_307
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_307_eq : LabToTarget.sectionLabels 204768 Reencode0_307.lines [] = (205772, localLabels1_307) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 204768 205772 riscvConfig.encode
    Initial307.lines Reencode0_307.lines [] Reencode0_307_eq).trans
    (localLabels0_307_eq.trans (by kernel_rfl))
#print axioms localLabels1_307_eq
end InitE.BackendStages.TargetChecks.Correct
