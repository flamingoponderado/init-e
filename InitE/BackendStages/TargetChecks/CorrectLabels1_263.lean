import InitE.BackendStages.TargetChecks.CorrectLabels0_263
import InitE.BackendStages.TargetChecks.CorrectEncode0_263
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_263_eq : LabToTarget.sectionLabels 159592 Reencode0_263.lines [] = (160608, localLabels1_263) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 159592 160608 riscvConfig.encode
    Initial263.lines Reencode0_263.lines [] Reencode0_263_eq).trans
    (localLabels0_263_eq.trans (by kernel_rfl))
#print axioms localLabels1_263_eq
end InitE.BackendStages.TargetChecks.Correct
