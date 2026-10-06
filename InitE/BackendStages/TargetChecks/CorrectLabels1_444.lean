import InitE.BackendStages.TargetChecks.CorrectLabels0_444
import InitE.BackendStages.TargetChecks.CorrectEncode0_444
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_444_eq : LabToTarget.sectionLabels 302856 Reencode0_444.lines [] = (303164, localLabels1_444) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 302856 303164 riscvConfig.encode
    Initial444.lines Reencode0_444.lines [] Reencode0_444_eq).trans
    (localLabels0_444_eq.trans (by kernel_rfl))
#print axioms localLabels1_444_eq
end InitE.BackendStages.TargetChecks.Correct
