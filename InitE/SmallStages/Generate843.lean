import Tools.GenSmallStages
import InitE.SmallStages.Oracles843
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 843 InitE.WordStages.source843.2.1 InitE.WordStages.source843.2.2 InitE.SmallStages.Oracles843.oracle843
