import InitE.BackendStages.TargetChecks.CorrectLabels0_515
import InitE.BackendStages.TargetChecks.CorrectEncode0_515
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_515_eq : LabToTarget.sectionLabels 362832 Reencode0_515.lines [] = (363536, localLabels1_515) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 362832 363536 riscvConfig.encode
    Initial515.lines Reencode0_515.lines [] Reencode0_515_eq).trans
    (localLabels0_515_eq.trans (by kernel_rfl))
#print axioms localLabels1_515_eq
end InitE.BackendStages.TargetChecks.Correct
