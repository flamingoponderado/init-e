import InitE.BackendStages.TargetChecks.CorrectLabels0_77
import InitE.BackendStages.TargetChecks.CorrectEncode0_77
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_77_eq : LabToTarget.sectionLabels 7616 Reencode0_77.lines [] = (8016, localLabels1_77) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 7616 8016 riscvConfig.encode
    Initial77.lines Reencode0_77.lines [] Reencode0_77_eq).trans
    (localLabels0_77_eq.trans (by kernel_rfl))
#print axioms localLabels1_77_eq
end InitE.BackendStages.TargetChecks.Correct
