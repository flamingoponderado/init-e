import InitE.BackendStages.TargetChecks.CorrectLabels0_266
import InitE.BackendStages.TargetChecks.CorrectEncode0_266
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_266_eq : LabToTarget.sectionLabels 162796 Reencode0_266.lines [] = (163664, localLabels1_266) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 162796 163664 riscvConfig.encode
    Initial266.lines Reencode0_266.lines [] Reencode0_266_eq).trans
    (localLabels0_266_eq.trans (by kernel_rfl))
#print axioms localLabels1_266_eq
end InitE.BackendStages.TargetChecks.Correct
