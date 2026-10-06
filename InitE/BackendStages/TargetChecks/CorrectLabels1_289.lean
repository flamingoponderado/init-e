import InitE.BackendStages.TargetChecks.CorrectLabels0_289
import InitE.BackendStages.TargetChecks.CorrectEncode0_289
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_289_eq : LabToTarget.sectionLabels 192360 Reencode0_289.lines [] = (193412, localLabels1_289) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 192360 193412 riscvConfig.encode
    Initial289.lines Reencode0_289.lines [] Reencode0_289_eq).trans
    (localLabels0_289_eq.trans (by kernel_rfl))
#print axioms localLabels1_289_eq
end InitE.BackendStages.TargetChecks.Correct
