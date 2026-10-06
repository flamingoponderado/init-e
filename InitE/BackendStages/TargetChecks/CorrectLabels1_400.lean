import InitE.BackendStages.TargetChecks.CorrectLabels0_400
import InitE.BackendStages.TargetChecks.CorrectEncode0_400
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_400_eq : LabToTarget.sectionLabels 275456 Reencode0_400.lines [] = (275944, localLabels1_400) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 275456 275944 riscvConfig.encode
    Initial400.lines Reencode0_400.lines [] Reencode0_400_eq).trans
    (localLabels0_400_eq.trans (by kernel_rfl))
#print axioms localLabels1_400_eq
end InitE.BackendStages.TargetChecks.Correct
