import Tools.GenSmallStages
import InitE.SmallStages.Oracles780
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 780 InitE.WordStages.source780.2.1 InitE.WordStages.source780.2.2 InitE.SmallStages.Oracles780.oracle780
