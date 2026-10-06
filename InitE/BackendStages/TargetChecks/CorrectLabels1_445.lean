import InitE.BackendStages.TargetChecks.CorrectLabels0_445
import InitE.BackendStages.TargetChecks.CorrectEncode0_445
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_445_eq : LabToTarget.sectionLabels 303164 Reencode0_445.lines [] = (303592, localLabels1_445) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 303164 303592 riscvConfig.encode
    Initial445.lines Reencode0_445.lines [] Reencode0_445_eq).trans
    (localLabels0_445_eq.trans (by kernel_rfl))
#print axioms localLabels1_445_eq
end InitE.BackendStages.TargetChecks.Correct
