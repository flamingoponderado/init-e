import Tools.GenSmallStages
import InitE.SmallStages.Oracles303
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 303 InitE.WordStages.source303.2.1 InitE.WordStages.source303.2.2 InitE.SmallStages.Oracles303.oracle303
