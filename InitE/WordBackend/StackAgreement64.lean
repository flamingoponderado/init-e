import InitE.WordStages.Optimize64
import InitE.StackAnalysis.Data64
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitE.WordBackend
/-- Independent stack-analysis literals match the checked optimized function. -/
theorem stackAnalysis64_eq : InitE.WordStages.optimized64 = InitE.StackAnalysis.optimized64 := by
  rfl
#print axioms stackAnalysis64_eq
end InitE.WordBackend
