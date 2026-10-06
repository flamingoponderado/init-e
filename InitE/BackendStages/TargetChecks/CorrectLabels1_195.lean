import InitE.BackendStages.TargetChecks.CorrectLabels0_195
import InitE.BackendStages.TargetChecks.CorrectEncode0_195
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_195_eq : LabToTarget.sectionLabels 66116 Reencode0_195.lines [] = (66192, localLabels1_195) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 66116 66192 riscvConfig.encode
    Initial195.lines Reencode0_195.lines [] Reencode0_195_eq).trans
    (localLabels0_195_eq.trans (by kernel_rfl))
#print axioms localLabels1_195_eq
end InitE.BackendStages.TargetChecks.Correct
