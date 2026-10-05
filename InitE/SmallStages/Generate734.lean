import Tools.GenSmallStages
import InitE.SmallStages.Oracles734
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 734 InitE.WordStages.source734.2.1 InitE.WordStages.source734.2.2 InitE.SmallStages.Oracles734.oracle734
